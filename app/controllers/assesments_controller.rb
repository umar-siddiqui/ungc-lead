# class AssesmentController
class AssesmentsController < ApplicationController
  extend AssesmentsSerializers

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
    if current_user.type.eql?('user')
      return 'true'
    end
  end

  def is_admin
    if current_user.type.eql?('admin')
      return 'true'
    end
  end
end
