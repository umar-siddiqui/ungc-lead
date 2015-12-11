module AssesmentsSerializers
  # class IndexSerializer
  class IndexSerializer < ActiveModel::Serializer
    attributes :_id, :name, :submitted_at, :description
    has_one :status

    def status
       report = Report.where(assesment_id: object._id, user_id: scope._id)
       return report.first.status if report.first.present?
      'pristine'
    end
  end
end
