# class CompaniesController
class CompaniesController < ApplicationController
  before_action :authenticate_user!

  def current_user_company
    render json: current_user.company
  end
end
