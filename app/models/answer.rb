# class Answer
class Answer
  include Mongoid::Document

  # Attributes
  field :value, type: String

  # Associations
  belongs_to :user
  belongs_to :question
  belongs_to :section
  belongs_to :assesment
end
