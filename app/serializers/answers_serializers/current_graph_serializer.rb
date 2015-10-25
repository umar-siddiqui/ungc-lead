module AnswersSerializers
  # CurrentGraphSerializer
  class CurrentGraphSerializer < ActiveModel::Serializer
    attributes :current_graph

    def current_graph
      [1,2,3,4,5].map do |stage|
        {
          stage: stage,
          list: gen_list(stage)
        }
      end
    end

    def gen_list(stage)
      object.select { |answer| answer.value == stage }.map(&:section).map do |sec|
        next function_section(sec) if type_function?(sec.name)
        readiness_section(sec)
      end
    end

    def function_section(section)
      {
        label: section.business_function.acronym,
        type: section.name.split(' ').first.downcase,
        full_label: section.business_function.name
      }
    end

    def readiness_section(section)
      {
        label: section.name.split(' ').map { |t| t[0] }.join('')
          .gsub(/\W/, '')[0..2].upcase,
        type: 'Readiness'.downcase,
        full_label: section.name
      }
    end

    def type_function?(section_name)
      ['Strategic Integration', 'Cultural Integration', 'Operational Integration']
        .include? section_name
    end
  end
end
