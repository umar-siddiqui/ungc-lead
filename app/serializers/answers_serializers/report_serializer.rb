module AnswersSerializers
  # CurrentGraphSerializer
  class ReportSerializer < ActiveModel::Serializer
    attributes :report, :function_priorities, :functional_snapshot

    attr_accessor :answers_hash, :readiness_bf_id

    def report
      @sections.map do |section|
        section_result(section)
      end
      .select{ |section| section }
    end

    def attributes
      make_answers_hash
      set_readiness_bf_id
      @sections = serialization_options[:sections].to_a
      super
    end

    private

    def set_readiness_bf_id
      @readiness_bf_id = BusinessFunction.where(name: 'Readiness Assesment', acronym: 'RA').first._id
    end

    def type_function?(section_name)
      ['Strategic Integration', 'Cultural Integration', 'Operational Integration']
        .include? section_name
    end

    def section_result(section)
      return readiness_section(section) if section.business_function_id == readiness_bf_id
      return function_section(section) if type_function?(section.name)
      nil
    end

    def readiness_section(section)
      common_section(section)
    end

    def function_section(section)
      common_section(section).merge({
        business_function: section.business_function
      })
    end

    def common_section(section)
      answers = answers_hash[section._id].try :sort do |x, y|
        x.question.order_no <=> y.question.order_no
      end

      target_opt =  answers && answers[0].question.options
                               .where(value: answers[1].value).pluck(:label).first

      {
        section_name: section.name,
        current: answers && { stage: answers[0].value, option:  answers[0].option.label },
        target: answers && { stage: answers[1].value, option:  target_opt },
        priority: answers && priority(answers.first.score),
        discussions: answers && answers.select { |ans| ans.question.label == 'Discussion' }
                                .map { |ans| { label: ans.question.description, value: ans.value } }
      }
    end

    def make_answers_hash
      @answers_hash = {}
      object.each do |answer|
        @answers_hash[answer.section_id] ||= []
        @answers_hash[answer.section_id].push(answer)
      end
      @answers_hash
    end

    def priority(score)
      value = score.try(:value)
      return '' if value.nil?
      return 'low' if value <= 2 && value >= 0
      return 'medium' if value <= 6 && value >= 3
      return 'high' if value <= 12 && value >= 8
      ''
    end

    def function_priorities
      priority_function_section_id = priority_function_section(@sections)._id
      sections = priority_function_sub_sections(@sections, priority_function_section_id)
        .map { |section| priority_function_sub_section(section) }
      {
        section_names: sections.map { |s| s[:name] },
        achieving_sustainability_goals:
          sections.map { |s| s[:achieving_sustainability_goals].to_i - 1 },
        historical_value_creation:
          sections.map { |s| s[:historical_value_creation].to_i - 1 }
      }
    end

    def priority_function_section(sections)
      sections
        .select { |sect| sect.name == 'Priority Function Identification' }
        .first
    end

    def priority_function_sub_sections(sections, priority_function_section_id)
      sections
        .select { |sect| sect.section_id == priority_function_section_id }
    end

    def priority_function_sub_section(section)
      answers = answers_hash[section._id].try :sort do |x, y|
        x.question.order_no <=> y.question.order_no
      end
      {
        name: section.name,
        achieving_sustainability_goals: answers && answers[0].value,
        historical_value_creation: answers && answers[1].value
      }
    end

    def functional_snapshot
      func_sections = function_sections(@sections)
      func_sections_rslts = function_sections_results(func_sections)
      functional_snapshot_hash(func_sections_rslts)
    end

    def function_sections(sections)
      sections.select { |section| type_function?(section.name) }
    end

    def function_sections_results(sections)
      sections.map do |section|
        answers = answers_hash[section._id].try :select do |answer|
          answer.question.order_no == 1
        end

        {
          business_function_name: section.business_function.name,
          section_name: section.name,
          current: answers && answers.first.value.to_i,
          priority: answers && answers.first.score.value / 2
        }
      end
    end

    def functional_snapshot_hash(section_results)
      temp_hash = {}
      section_results.each do |rslt|
        next unless rslt[:current]
        temp_hash[rslt[:business_function_name]] ||= {
          priority: 0,
          "Strategic Integration" => 0,
          "Cultural Integration" => 0,
          "Operational Integration" => 0
        }
        temp_hash[rslt[:business_function_name]][rslt[:section_name]] = rslt[:current]
        temp_hash[rslt[:business_function_name]][:priority] += rslt[:priority]
      end

      {
        function_section_names: temp_hash.keys,
        strategic: temp_hash.map { |_key, sect| sect["Strategic Integration"] },
        operational: temp_hash.map { |_key, sect| sect["Operational Integration"] },
        cultural: temp_hash.map { |_key, sect| sect["Cultural Integration"] },
        priority: temp_hash.map { |_key, sect| (sect[:priority].to_f / 3).round(2) }
      }
    end
  end
end
