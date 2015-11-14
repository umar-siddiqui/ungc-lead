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

  def create
    user = User.new(permit_params)
    user.save!
    render json: user
  end

  private

  def permit_params
    allow = [:email, :password, :password_confirmation, :name, :type,
             assesment_ids: [], company: [:name]]
    params.require(:user).permit(allow)
  end

  def is_admin
    if current_user.type.eql?('admin')
      return 'true'
    end
  end
end
