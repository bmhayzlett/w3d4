# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.destroy_all

10.times do
  User.create!(user_name: Faker::Name.name)
end


5.times do |i|
  Poll.create!(author_id: i+1, title: Faker::Hacker.say_something_smart)
end


5.times do |i|
  2.times {Question.create!(poll_id: i+1, text: Faker::Lorem.sentence)}
end

#  id          :integer          not null, primary key
#  question_id :integer
#  text        :text
#  created_at  :datetime
#  updated_at  :datetime

10.times do |i|
  4.times {AnswerChoice.create!(question_id: i+1, text: Faker::Lorem.sentence)}
end

#  id            :integer          not null, primary key
#  user_id       :integer
#  answer_choice :integer
#  created_at    :datetime
#  updated_at    :datetime

10.times do |user_id|
  10.times do |question_id|
    Response.create!(user_id: (user_id + 1), answer_choice_id: (question_id * 4 + (1..4).to_a.sample))
  end
end
