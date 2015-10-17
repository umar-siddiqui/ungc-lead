# class Section
class Section
  include Mongoid::Document

  # Attributes
  field :name, type: String
  field :description

  # Associations
  belongs_to :assesment
  belongs_to :section
  has_many :sections, class_name: 'Section', dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy

  def descendents(user_id)
    sections.map do |child|
      {
        _id: child.id,
        assesment_id: child.assesment_id,
        name: child.name,
        sections: child.descendents(user_id),
        submitted: Answer.where(user_id: user_id, section_id: child._id)
                         .count > 0 || child.questions.count == 0
      }
    end
  end

  def self_and_descendents(user_id)
    {
      _id: id,
      assesment_id: assesment_id,
      name: name,
      sections: descendents(user_id),
      submitted: Answer.where(user_id: user_id, section_id: _id)
                       .count > 0 || questions.count == 0
    }
  end
end
