# SectionsController
class SectionsController < ApplicationController
  before_action :authenticate_user!
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

  def show
    render json: Section.find(params[:id])
  end

  def report
    sections = Section.where(
      assesment_id: params[:assesment_id], section_id: nil)
    render json: {
      sections: sections
        .map { |section| section.self_and_descendents_report(current_user._id) }
    }
  end

  def report_pdf
    file_url = "/pdfs/#{current_user._id.to_s}.pdf"
    save_path = Rails.root.join('public').to_s + file_url
    job = HtmlToPdfJob.perform_later(params[:content], save_path)
    render json: { file_url: file_url }
  end

  def check_job_status
    render json: { complete: File.exist?(Rails.root.join('public').to_s + params[:file_url]),
                   file_url: params[:file_url] }
  end

  private

  def report_render

  end

  def fetch_assesment_id
    params[:assesment_id] ||= Assesment.first._id
  end
end
