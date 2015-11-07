# QuestionsController
class QuestionsController < ApplicationController
  def index
    questions = Question
      .includes(:options)
      .where(section_id: params[:section_id])
      .as_json(include: :options)
    render json: {
      questions: questions
    }
  end
end
