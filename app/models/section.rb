# class Section
class Section
  include Mongoid::Document

  # Associations
  belongs_to :assesment
  has_many :sections, class_name: 'sub-section'
  has_many :questions
  has_many :answers
end
