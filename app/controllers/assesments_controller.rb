# class AssesmentController
class AssesmentsController < ApplicationController
  extend AssesmentsSerializers

  def index
    assesments = Assesment.in(user_ids: current_user._id)
    render json: assesments,
           each_serializer: AssesmentsSerializers::IndexSerializer
  end

  def all_assesments
    render json: Assesment.all,
           each_serializer: AdminSerializers::AdminIndexSerializer
  end
end
