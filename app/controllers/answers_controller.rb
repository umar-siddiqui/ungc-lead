class AnswersController < ApplicationController
  rescue_from Mongoid::Errors::DocumentNotFound, with: :doc_not_found
  rescue_from Mongoid::Errors::Validations, with: :doc_invalid

  def create
    answers = params[:answers].map do |ans|
      answer = Answer
        .new(
          ans.permit(:question_id, :section_id, :assesment_id, :value)
            .merge({ user_id: current_user._id })
        )
      answer.save!
      answer
    end
    render json: { answers: answers }
  end
end
