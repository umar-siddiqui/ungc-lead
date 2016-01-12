# class Section
class Section
  include Mongoid::Document

  # Attributes
  field :name, type: String
  field :description
  field :sequence_no, type: Integer

  # Associations
  belongs_to :assesment
  belongs_to :section
  belongs_to :business_function
  has_many :sections, class_name: 'Section', dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :formulas, dependent: :destroy

  accepts_nested_attributes_for :questions, allow_destroy: true
  accepts_nested_attributes_for :sections, allow_destroy: true

  def descendents(user_id)
    sections.map do |child|
      {
        _id: child.id,
        assesment_id: child.assesment_id,
        name: child.name,
        description: child.description,
        sections: child.descendents(user_id),
        submitted: Answer.where(user_id: user_id, section_id: child._id).count > 0,
        questions_count: child.questions.count,
        sequence_no: child.sequence_no
      }
    end
    .sort do |s1, s2|
      s1[:sequence_no] <=> s2[:sequence_no]
    end
  end

  def self_and_descendents(user_id)
    {
      _id: id,
      assesment_id: assesment_id,
      name: name,
      description: description,
      sections: descendents(user_id),
      submitted: Answer.where(user_id: user_id, section_id: _id).count > 0,
      questions_count: questions.count,
      sequence_no: sequence_no
    }
  end

  def descendents_report(user_id)
    sections.map do |child|
      {
        _id: child.id,
        assesment_id: child.assesment_id,
        name: child.name,
        description: child.description,
        sections: child.descendents_report(user_id),
        answers: Answer
          .includes(:question, :option)
          .where(user_id: user_id, section_id: child._id)
          .as_json(only: [:value], include: {
                    question: { only: [:description, :order_no] },
                    option: { only: [:label] }
                   }),
        score: Score.where(user_id: user_id, section_id: child._id).first,
        sequence_no: child.sequence_no
      }
    end
    .sort do |s1, s2|
      s1[:sequence_no] <=> s2[:sequence_no]
    end
  end

  def self_and_descendents_report(user_id)
    {
      _id: id,
      assesment_id: assesment_id,
      name: name,
      description: description,
      sections: descendents_report(user_id),
      answers: Answer
        .includes(:question, :option)
        .where(user_id: user_id, section_id: _id)
        .as_json(only: [:value], include: {
                    question: { only: [:description, :order_no] },
                    option: { only: [:label] }
                   }),
      score: Score.where(user_id: user_id, section_id: _id).first,
      sequence_no: sequence_no
    }
  end
end
