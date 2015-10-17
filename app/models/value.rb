# class Value
class Value
  include Mongoid::Document

  # Attributes
  field :value

  # Associations
  belongs_to :option
  has_many :answers
end
