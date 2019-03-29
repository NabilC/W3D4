# == Schema Information
#
# Table name: users
#
#  id            :bigint(8)        not null, primary key
#  username      :string
#  authored_poll :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  response_id   :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
