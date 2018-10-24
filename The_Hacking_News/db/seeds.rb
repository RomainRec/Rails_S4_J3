# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do 
	user = User.create(
		name: Faker::BackToTheFuture.character
	)
end

5.times do 
	post = Post.create(
    	url: Faker::Internet.url,
		  user_id: rand((User.first.id)..(User.last.id))
	)
end

5.times do 
  comment = Comment.create!(
    	body: Faker::Hipster.sentence,
    	user_id: rand((User.first.id)..(User.last.id)),
    	post_id: rand((Post.first.id)..(Post.last.id))
    )
end

5.times do 
  answer = Answer.create!(
    	body: Faker::Hipster.sentence,
    	user_id: rand((User.first.id)..(User.last.id)),
    	comment_id: rand((Comment.first.id)..(Comment.last.id))
    )
end