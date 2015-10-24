# class Formula
class Formula
  include Mongoid::Document

  # Attributes
  field :expression
  field :name

  # Associations
  belongs_to :section
  has_many :scores, dependent: :destroy

  def calculate(answers)
    answers.sort_by! { |answer| answer.question.order_no }

    tokens = expression.split
    expression_tokens = tokens.map do |token|
      if token =~ /^ON[0-9]+/
        token = token.gsub(/^ON/, '')
        next token = answers[token.to_i - 1].value
      end
      token
    end
    eval expression_tokens.join(' ')
  end
end
