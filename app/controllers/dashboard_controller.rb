# class DashboardController
class DashboardController < ApplicationController
  before_action :init_ng_module

  def init_ng_module
    @asset_module = 'dashboard'
    @angular_module = 'ungc.' + @asset_module
  end

  def index
  end
end
