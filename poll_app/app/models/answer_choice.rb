# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  choice      :text
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  response_id :integer
#

class AnswerChoice < ApplicationRecord
  belongs_to :question,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :question

  has_many :responses,
    primary_key: :id,
    foreign_key: :response_id,
    class_name: :Response

end
