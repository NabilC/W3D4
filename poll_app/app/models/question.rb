# == Schema Information
#
# Table name: questions
#
#  id         :bigint(8)        not null, primary key
#  question   :text
#  poll_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  answer_id  :integer
#

class Question < ApplicationRecord
  has_many :answer_choices,
    primary_key: :id,
    foreign_key: :answer_id,
    class_name: :AnswerChoice  
  
  belongs_to :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Poll

  has_many :responses,
    through: :responses,
    source: :question

  def responses
    self.select(:responses).where(id: self.id)
  end

end
