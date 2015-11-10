module AnswersSerializers
  # CurrentGraphSerializer
  class CurrentGraphSerializer < ActiveModel::Serializer
    attributes :current_graph

    def current_graph
      [1,2,3,4,5].map do |stage|
        {
          stage: stage,
          list: gen_list(stage.to_s)
        }
      end
    end

    def gen_list(stage)
      object.select { |answer| answer.value == stage }.map do |ans|
        next function_section(ans) if type_function?(ans.section.name)
        readiness_section(ans)
      end
    end

    def function_section(ans)
      {
        label: ans.section.business_function.acronym,
        type: ans.section.name.split(' ').first.downcase + ' '+ priorty(ans.score),
        full_label: ans.section.business_function.name
      }
    end

    def readiness_section(ans)
      {
        label: ans.section.name.split(' ').map { |t| t[0] }.join('')
          .gsub(/\W/, '')[0..2].upcase,
        type: 'Readiness'.downcase + ' '+ priorty(ans.score),
        full_label: ans.section.name
      }
    end

    def type_function?(section_name)
      ['Strategic Integration', 'Cultural Integration', 'Operational Integration']
        .include? section_name
    end

    private

    def priorty(score)
      value = score.try(:value)
      return '' if value.nil?
      return 'low' if value <= 2 && value >= 0
      return 'medium' if value <= 6 && value >= 3
      return 'high' if value <= 12 && value >= 8
      ''
    end
  end
end
