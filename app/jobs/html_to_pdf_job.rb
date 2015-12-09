# HtmlToPdfJob
class HtmlToPdfJob < ActiveJob::Base
  queue_as :default

  def perform(content)
    pdf = WickedPdf.new.pdf_from_string(content, margin: { top: 10, bottom: 10 })

    save_path = Rails.root.join('public', 'pdfs', 'filename.pdf')
    File.open(save_path, 'w+b') do |file|
      file << pdf
    end
  end
end
