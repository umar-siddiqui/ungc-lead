# class Section
class Section
  include Mongoid::Document

  # Attributes
  field :name, type: String
  field :status
  field :description

  # Associations
  belongs_to :assesment
  belongs_to :section
  has_many :sections, class_name: 'Section', dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy

  def descendents
    sections.map do |child|
      {
        id: child.id,
        name: child.name,
        status: child.status,
        sections: child.descendents
      }
    end
  end

  def self_and_descendents
    {
      id: id,
      name: name,
      status: status,
      sections: descendents
    }
  end
end
