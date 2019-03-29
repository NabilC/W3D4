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

require 'test_helper'

class AnswerChoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
