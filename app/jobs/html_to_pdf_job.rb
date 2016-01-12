# HtmlToPdfJob
class HtmlToPdfJob < ActiveJob::Base
  queue_as :default

  def perform(content, save_path)
    pdf = WickedPdf.new.pdf_from_string(content,
                                        margin: { top: 10, bottom: 10 },
                                        disable_javascript: false,
                                        javascript_delay: 5000)

    File.open(save_path, 'w+b') do |file|
      file << pdf
    end
  end
end
