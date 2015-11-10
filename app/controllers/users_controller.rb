# class UsersController
class UsersController < ApplicationController
  def index
    users = User.all
    render json: users,
           each_serializer: AdminSerializers::UsersListingSerializer
  end
end
