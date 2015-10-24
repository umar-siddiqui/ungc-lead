class SectionsController < ApplicationController
  before_action :init_ng_module
  before_action :fetch_assesment_id, only: [:index, :report]

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
          sections: sections
            .map { |section| section.self_and_descendents(current_user._id) } }
      end
    end
  end

  def report
    sections = Section.where(assesment_id: params[:assesment_id], section_id: nil)
    render json: {
      sections: sections
        .map { |section| section.self_and_descendents_report(current_user._id) }
    }
  end

  private

  def fetch_assesment_id
    params[:assesment_id] ||= Assesment.first._id
  end
end
