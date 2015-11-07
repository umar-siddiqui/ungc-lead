# class Option
class Option
  include Mongoid::Document

  # Attributes
  field :label, type: String
  field :value, type: Integer

  # Associations
  belongs_to :question
end
