module AssesmentsSerializers
  # class IndexSerializer
  class IndexSerializer < ActiveModel::Serializer
    attributes :_id, :name, :submitted_at, :description
    has_one :status

    def status
      return 'completed' if object.submitted_at.present?
      answers = Answer.where(user_id: scope._id, assesment_id: object._id).to_a
      return 'in_progress' if answers.count > 0
      return 'pristine' if answers.count == 0
    end
  end
end
