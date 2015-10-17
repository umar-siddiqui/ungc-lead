# class Question
class Question
  include Mongoid::Document

  # Attributes
  field :control_type

  # Associations
  belongs_to :section
  has_many :options, dependent: :destroy
  has_one :answer, dependent: :destroy
end
