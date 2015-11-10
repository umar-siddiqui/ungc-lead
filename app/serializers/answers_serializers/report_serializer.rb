module AnswersSerializers
  # CurrentGraphSerializer
  class ReportSerializer < ActiveModel::Serializer
    attributes :report

    attr_accessor :answers_hash, :readiness_bf_id

    def report
      serialization_options[:sections].map do |section|
        section_result(section)
      end
      .select{ |section| section }
    end

    def attributes
      make_answers_hash
      set_readiness_bf_id
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
      common_section(section).merge({ business_function: section.business_function })
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
        discussions: answers && answers.drop(3)
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
  end
end
