# class Company
class Company
  include Mongoid::Document

  # Attributes
  field :name

  # Associations
  has_many :users
end
