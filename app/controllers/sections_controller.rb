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
    pdf = WickedPdf.new.pdf_from_string(params[:content], margin: { top: 10, bottom: 10 })

    save_path = Rails.root.join('public', 'pdfs', "#{current_user
      ._id.to_s}.pdf")

    File.open(save_path, 'w+b') { |file| file << pdf }
    render json: {
      message: 'Buildind PDF',
      file_url: "/pdfs/#{current_user._id.to_s}.pdf"
    }
  end

  private

  def fetch_assesment_id
    params[:assesment_id] ||= Assesment.first._id
  end
end
