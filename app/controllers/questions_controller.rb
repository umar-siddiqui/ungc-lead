  # QuestionsController
class QuestionsController < ApplicationController
  before_action :authenticate_user!

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
    questions = (params[:questions] || []).map do |quest|
      question = Question.find(quest[:_id])
      question.update_attributes!(permit_params(quest))
      question
    end

    section = Section.find(params[:section_id])
    section.update_attributes!(section_permitted_params)

    render json: { questions: questions, section: section }
  end

  def section_permitted_params
    params.require(:section).permit(:name, :description)
  end

  def permit_params(question)
    question[:options_attributes] = question[:options]
    question
      .permit(:description, :label, :control_type, :order_no,
              options_attributes: [:_id, :label])
  end
end
