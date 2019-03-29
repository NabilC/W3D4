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

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
