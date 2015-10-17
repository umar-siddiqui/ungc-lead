class AnswersController < ApplicationController
  rescue_from Mongoid::Errors::DocumentNotFound, with: :doc_not_found
  rescue_from Mongoid::Errors::Validations, with: :doc_invalid

  def create
    answers = params[:answers].map do |ans|
      answer = Answer
        .new(ans.permit(:question_id, :section_id, :assesment_id, :value))
      answer.save!
      answer
    end

    section = Section.find(answers.first.section_id)
    section.status = 'submitted'
    section.save!

    render json: { answers: answers }
  end

  private

  def permitted_params
    params
      .require(:answers)
      .permit(:question_id, :section_id, :assesment_id, :value)
  end
end
