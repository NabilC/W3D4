# == Schema Information
#
# Table name: polls
#
#  id          :bigint(8)        not null, primary key
#  author_id   :integer
#  title       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#

class Poll < ApplicationRecord
  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User

  has_many :questions,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question


end
