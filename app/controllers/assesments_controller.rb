# class AssesmentController
class AssesmentsController < ApplicationController
  extend AssesmentsSerializers

  before_action :authenticate_user!

  def index
    if is_user
      assesments = Assesment.in(user_ids: current_user._id)
      render json: assesments,
             each_serializer: AssesmentsSerializers::IndexSerializer
    else
      render json: { errors: ['Access Denied'] },
             status: :unauthorized
    end
  end

  def all_assesments
    if is_admin
      render json: Assesment.all,
             each_serializer: AdminSerializers::AdminIndexSerializer
    else
      render json: { errors: ['Access Denied'] },
             status: :unauthorized
    end
  end

  def is_user
    current_user.type.eql?('user')
  end

  def is_admin
    current_user.type.eql?('admin')
  end
end
