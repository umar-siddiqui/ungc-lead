# class Section
class Section
  include Mongoid::Document

  # Associations
  belongs_to :assesment
  has_many :sub_sections, class_name: 'Section'
  has_many :questions
  has_many :answers
end
