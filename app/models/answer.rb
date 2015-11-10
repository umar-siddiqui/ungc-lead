# class Answer
class Answer
  include Mongoid::Document

  # Attributes
  field :value

  # Associations
  belongs_to :user
  belongs_to :question
  belongs_to :section
  belongs_to :assesment
  belongs_to :option
  belongs_to :score
end
