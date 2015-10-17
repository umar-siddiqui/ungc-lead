class SectionsController < ApplicationController
  before_action :init_ng_module

  def init_ng_module
    @asset_module = 'sections'
    @angular_module = 'ungc.' + @asset_module
  end

  def index
    respond_to do |format|
      format.html
      format.json do
        sections = Section
          .where(assesment_id: params[:assesment_id], section_id: nil)

        render json: {
          sections: sections.map { |section| section.self_and_descendents }
        }
      end
    end
  end
end
