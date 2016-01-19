# class ReportsController
class ReportsController < ApplicationController
  before_action :authenticate_user!
  before_action :init_ng_module

  def init_ng_module
    @asset_module = 'reports'
    @angular_module = 'ungc.' + @asset_module
  end

  def index
  end

  def create
    report = Report.where(user: current_user, assesment: Assesment.first, status: 'in_progress').first_or_create
    # report.save!
    render json: report
  end

  def update_report
    report = Report.find_by(user: current_user, assesment: Assesment.first)
    report.update_attributes!(permitted_params)
    render json: report
  end

  private

  def permitted_params
    params.require(:report).permit(:status, :file_url)
  end
end
