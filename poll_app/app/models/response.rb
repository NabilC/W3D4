# == Schema Information
#
# Table name: responses
#
#  id          :bigint(8)        not null, primary key
#  user_id     :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Response < ApplicationRecord

  # validate :response, presence: true

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :AnswerChoice  

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_one :question,
    through: :question,
    source: :response

  def question
      self.select(:question).where(id: :question_id)
  end

  def sibling_responses
      self.question.select(:response).where.not(id: self.id)
  end
end
