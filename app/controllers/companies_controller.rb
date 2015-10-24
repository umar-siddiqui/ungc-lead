# class CompaniesController
class CompaniesController < ApplicationController
  def current_user_company
    render json: current_user.company
  end
end
