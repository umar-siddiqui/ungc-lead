# class ReportsController
class ReportsController < ApplicationController
  before_action :init_ng_module

  def init_ng_module
    @asset_module = 'reports'
    @angular_module = 'ungc.' + @asset_module
  end

  def index
  end
end
