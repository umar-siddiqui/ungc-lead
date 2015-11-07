# class DashboardSerializer
class DashboardSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name , :submitted_at , :user_ids
end
