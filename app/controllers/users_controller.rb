# class UsersController
class UsersController < ApplicationController
  def index
    if is_admin
      users = User.all
      render json: users,
             each_serializer: AdminSerializers::UsersListingSerializer
    else
      render json: { errors: ['Access Denied'] },
             status: :unauthorized
    end
  end

  def is_admin
    if current_user.type.eql?('admin')
      return 'true'
    end
  end
end
