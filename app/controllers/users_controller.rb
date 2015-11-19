# class UsersController
class UsersController < ApplicationController
  def index
    if current_user.type.eql?('admin')
      users = User.where(type: 'user')
      render json: users,
             each_serializer: AdminSerializers::AllUsersSerializer
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
    allow = [
      :email,
      :name,
      :type,
      :password,
      :password_confirmation,
      assesment_ids: [], company: [:name]
    ]
    params.require(:user).permit(allow)
  end
end
