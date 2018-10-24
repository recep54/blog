# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


10.times do
  user = User.create!(first_name: Faker::Company.name, last_name: Faker::Company.name, email: Faker::Internet.email)
end

5.times do
  categorie = Categorie.create!(category_name: Faker::Book.genre)
end

10.times do
  article = Article.create!(user_id: Random.new.rand(1..10),content: Faker::Lorem.sentences, title: Faker::Book.title, categorie_id: Random.new.rand(1..5))
end

15.times do
	commentaire = Comment.create!(comment: Faker::Lorem.sentences(1), article_id: Random.new.rand(1..10), user_id: Random.new.rand(1..10))
end

15.times do
	like = Like.create!(article_id: Random.new.rand(1..10), user_id: Random.new.rand(1..10))
end



