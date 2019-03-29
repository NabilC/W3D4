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

require 'test_helper'

class PollTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
