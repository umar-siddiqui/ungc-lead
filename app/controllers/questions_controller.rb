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

  def update_all
    questions = params[:questions].map do |quest|
      question = Question.find(quest[:_id])
      question.update_attributes!(permit_params(quest))
      question
    end
    render json: questions
  end

  def permit_params(question)
    question[:options_attributes] = question[:options]
    question
      .permit(:description, :label, :control_type, :order_no,
              options_attributes: [:_id, :label])
  end
end
