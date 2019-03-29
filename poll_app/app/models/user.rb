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

class User < ApplicationRecord

  validate :response, uniqueness: true

  has_many :authored_polls,
    primary_key: :id,
    foreign_key: :authored_poll,
    class_name: :Poll

  has_many :responses,
    primary_key: :id,
    foreign_key: :response_id,
    class_name: :Response

  def not_duplicate_response(responses)
    responses = User.responses
    raise 'User Can''t Create Multiple Responses To The Same Question' if responses.any? { |response| !response.uniq? }
  end


end
