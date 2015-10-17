# class Option
class Option
  include Mongoid::Document

  # Attributes
  field :label, type: String
  field :value, type: String

  # Associations
  belongs_to :question
end
