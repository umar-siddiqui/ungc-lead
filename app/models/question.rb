# class Question
class Question
  include Mongoid::Document

  # Attributes
  field :description
  field :label
  field :control_type
  field :order_no, type: Integer

  # Associations
  belongs_to :section
  has_many :options, dependent: :destroy
  has_one :answer, dependent: :destroy

  accepts_nested_attributes_for :options, allow_destroy: true
end
