# class AuthenticationController
class AuthenticationController < ApplicationController
  before_action :init_ng_module

  def init_ng_module
    @asset_module = 'authentication'
    @angular_module = 'ungc.' + @asset_module
  end
end
