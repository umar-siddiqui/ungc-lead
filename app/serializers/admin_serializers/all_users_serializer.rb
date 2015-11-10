module AdminSerializers
  # class AllUsersSerializer
  class AllUsersSerializer < ActiveModel::Serializer
    attributes :_id, :name, :email

    has_many :assesments
    has_one :company

    def assesments
      object.assesments.map do |assesment|
        {
          _id: assesment._id,
          name: assesment.name,
          status: status(assesment)
        }
      end
    end

    def status(assesment)
      return 'completed' if assesment.submitted_at.present?
      answers = Answer.where(assesment_id: assesment._id).to_a
      return 'in_progress' if answers.count > 0
      return 'pristine' if answers.count == 0
    end
  end
end
