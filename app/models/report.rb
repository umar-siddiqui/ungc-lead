class Report
  include Mongoid::Document
  belongs_to :user
  belongs_to :assesment

  field :status
  field :report_json, type: Hash
  field :file_url
end
