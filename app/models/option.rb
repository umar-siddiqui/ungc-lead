# class Option
class Option
  include Mongoid::Document

  # Attributes
  field :label

  # Associations
  belongs_to :question
  has_many :values
end
