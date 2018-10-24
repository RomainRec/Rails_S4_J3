# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#on crée avec le seed 10 utilisateurs.
10.times do
  user = User.create!(
  	first_name: Faker::LordOfTheRings.character,
  	last_name: Faker::StarTrek.character,
  	email: Faker::Internet.email
  	)
end

# on crée avec le seed 5 catégories
5.times do 
	categorie = Categorie.create(name: Faker::Book.genre)
end

# puis on associe 10 articles à une des catégories.
10.times do article = Article.create!(
       title: Faker::Movie.quote,
       content: Faker::VForVendetta.speech,
       user_id: rand(User.first.id..User.last.id),
       categorie_id: rand(Categorie.first.id..Categorie.last.id)
        )
      end 

# on crée 15 commentaires dans le seed, assignés à des utilisateurs et à des articles.
15.times do
  commentaire = Commentaire.create!(
  	content: Faker::BackToTheFuture.quote,
    user_id: rand(User.first.id..User.last.id), #ajout d'iD random
    article_id: rand(Article.first.id..Article.last.id),
  	)
end

# on créé 15 likes en BDDs avec le seed.
15.times do
  like = Like.create(
    user_id: rand(User.first.id..User.last.id), 
    article_id: rand(Article.first.id..Article.last.id)
    )
end