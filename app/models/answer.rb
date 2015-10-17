# class Answer
class Answer
  include Mongoid::Document

  # Associations
  belongs_to :user
  belongs_to :question
  belongs_to :section
end
