# class Question
class Question
  include Mongoid::Document

  # Attributes
  field :control_type

  # Associations
  belongs_to :section
  has_many :options, dependent: :destroy
  has_many :answers, dependent: :destroy
end
