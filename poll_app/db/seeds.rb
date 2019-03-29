# This file should contain al the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# User.destroy_all

# 20.times do |i|
#   User.create(
#     username: Faker::Name.name,
#     authored_poll: Faker::Number.number
#   )

# end

User.create([{ username: 'Star Wars', authored_poll: 1 }, { username: 'Star Trek', authored_poll: 2 }])
Poll.create([{ author_id: 1, title: 'Midterms' }, { author_id: 2, title: 'Presidential' }])
Question.create([{ question: 'Blah blah blah', poll_id: 1 }, { question: 'BEEP BOP', poll_id: 2 }])
AnswerChoice.create([{ choice: 2, question_id: 1}, { choice: 1, question_id: 2}])
Response.create([{user_id: 1}, {question_id: 1}, {user_id: 2}, {question_id: 2}])