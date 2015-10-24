module Admin
# class AdminpanelController
  class AdminpanelController < ApplicationController
    extend AdminSerializers

    def index
      assesments = Assesment.all
      render json: assesments,
             each_serializer: AdminSerializers::AdminIndexSerializer
    end
  end
end
