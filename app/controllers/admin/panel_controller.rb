module Admin
  # class PanelController
  class PanelController < ApplicationController
    before_action :init_ng_module

    def init_ng_module
      @asset_module = 'admin'
      @angular_module = 'ungc.' + @asset_module
    end

    def index
    end
  end
end
