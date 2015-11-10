module AdminSerializers
  # class AdminIndexSerializer
  class UsersListingSerializer < ActiveModel::Serializer
    attributes :_id, :name, :email

    has_many :assesments
    has_one :company

    def company
      object.company
    end

    def assesments
      object.assesments.map do |a|
        {
          _id: a._id.to_s,
          id: a.id.to_s,
          name: a.name,
          status: status(a)
        }
      end
    end

    def status(a)
      return 'completed' if a.submitted_at.present?
      answers = Answer.where(assesment_id: a._id).to_a
      return 'in_progress' if answers.count > 0
      return 'pristine' if answers.count == 0
    end
  end
end
