# class UsersController
class UsersController < ApplicationController
  def index
    users = User.where(type: 'user')
    render json: users,
           each_serializer: AdminSerializers::AllUsersSerializer
  end
end
