module AdminSerializers
  # class AllUsersSerializer
  class AllUsersSerializer < ActiveModel::Serializer
    attributes :_id, :name, :email

    has_many :assesments
    has_one :company
    has_one :report

    def assesments
      object.assesments.map do |assesment|
        {
          _id: assesment._id,
          name: assesment.name
        }
      end
    end

    def report
      object.report.as_json
    end
  end
end
