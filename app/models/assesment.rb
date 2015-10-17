# class Assesment
class Assesment
  include Mongoid::Document
  include Mongoid::Timestamps

  # Associations
  has_and_belongs_to_many :users, dependent: :destroy
  has_many :sections, dependent: :destroy
end
