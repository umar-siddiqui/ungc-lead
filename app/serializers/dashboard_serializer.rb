# class DashboardSerializer
class DashboardSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name, :description, :submitted_at, :user_ids
end
