# class Section
class Section
  include Mongoid::Document

  # Associations
  belongs_to :assesment
  has_many :sections, class_name: 'Section', dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
end
