class AnswersController < ApplicationController
  rescue_from Mongoid::Errors::DocumentNotFound, with: :doc_not_found
  rescue_from Mongoid::Errors::Validations, with: :doc_invalid

  def create
    answers = params[:answers].map do |ans|
      answer = Answer
        .new(
          ans.permit(:question_id, :section_id, :assesment_id, :option_id, :value)
             .merge({ user_id: current_user._id })
        )
      answer.save!
      answer
    end
    scores = generate_scores(answers)

    render json: { answers: answers, scores: scores }
  end

  def current_graph
    answers = Answer
              .includes(:question, :section)
              .select { |a| a.question.label == 'Current Performance'  }
    render json: answers, serializer: CurrentGraphSerializer
  end

  def generate_scores(answers)
    Formula.where(section_id: answers.first.section_id).map do |formula|
      score_value = formula.calculate(answers)
      score = Score
        .new(
          value: score_value, user_id: current_user._id,
          formula_id: formula._id, name: formula.name,
          section_id: formula.section_id)
      score.save!
      answers.map { |answer| answer.score_id = score._id; answer.save! }
      score
    end
  end
end
