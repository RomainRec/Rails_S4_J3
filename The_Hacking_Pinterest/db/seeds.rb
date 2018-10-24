# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  user = User.create!(
    name: Faker::LordOfTheRings.character
    )
end

5.times do
  pin = Pin.create!(
    url: Faker::Internet.url,
    user_id: rand((User.first.id)..(User.last.id))
    )
end

5.times do
  comment = Comment.create!(
    content: Faker::Hipster.sentence,
    user_id: rand((User.first.id)..(User.last.id)),
    pin_id: rand((Pin.first.id)..(Pin.last.id))
    )
end
