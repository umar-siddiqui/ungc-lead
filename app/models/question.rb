# class Question
class Question
  include Mongoid::Document

  # Associations
  belongs_to :section
  has_many :options
  has_many :answers
end
