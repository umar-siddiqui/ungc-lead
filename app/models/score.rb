# class Score
class Score
  include Mongoid::Document

  # Attributes
  field :value
  field :name

  # Associations
  belongs_to :formula
  belongs_to :section
  belongs_to :user
end
