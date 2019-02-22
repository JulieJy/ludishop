# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'I destroy all reviews'
Review.destroy_all
p 'I destroy all games'
Game.destroy_all
p 'I destroy all users'
User.destroy_all

p 'I create 4 users'
user1 = User.new(
  first_name: "Julie",
  last_name: "Jaumary",
  email: "juliej@gmail.com",
  address: "20 rue des capucins, Lyon",
  phone_number:"06 12 34 56 78",
  password: "secret")

user1.remote_photo_url = "app/assets/images/profile.png"
user1.save!

user2 = User.new(
  first_name: "Jean",
  last_name: "Naimarre",
  email: "jean@neymar.com",
  address: "Grenoble",
  phone_number:"06 10 10 10 10",
  password: "secret")

user2.remote_photo_url = "app/assets/images/profile_1.jpg"
user2.save!

user3 = User.new(
  first_name: "Jean-Michel",
  last_name: "Frontend",
  email: "jeanmichel@frontend.com",
  address: "Montpellier",
  phone_number:"06 00 00 00 00",
  password: "secret")

user3.remote_photo_url = "app/assets/images/profile_2.jpg"
user3.save!

user4 = User.new(
  first_name: "Kevin",
  last_name: "Devlaupeur",
  email: "maurice@devlaupeur.com",
  address: "Saint Etienne",
  phone_number:"00 00 00 00 00",
  password: "secret")

user4.remote_photo_url = "app/assets/images/profile_3.jpg"
user4.save!

p 'creating games...'
game1 = Game.new(
  user: user1,
  name:"Codenames",
  description: "Codenames - Europe  est le deuxième volume de la célèbre série des Aventuriers du Rail dont la version de base se joue sur une carte des USA. Plus qu'une nouvelle carte, cette version incorpore de nouvelles routes (tunnels et ferries), et de nouvelles pièces de jeu, les gares.",
  state: "used",
  price: 11,
  picture: "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850044/Codenames.jpg")

game1.remote_photo_url = "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850044/Codenames.jpg"
game1.save!

game2 = Game.new(
  user: user3,
  name:"Dominion",
  description: "L'Antiquité et ses merveilles. Revivez l'épopée des grandes constructions avec ce jeu de cartes et de stratégie !",
  state: "used",
  price: 12,
  picture: "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850044/dominion.jpg",
  )

game2.remote_photo_url = "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850044/dominion.jpg"
game2.save!

game3 = Game.new(
  user: user2,
  name:"Catan",
  description: "Jouez les espions et retrouvez vos alliés avec des Noms de Code! Codenames est un jeu d'expression, d'association d'idées et de déduction qui se joue en équipe.",
  state: "new",
  price: 13,
  picture: "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850044/catan.jpg",
  )

game3.remote_photo_url = "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850044/catan.jpg"
game3.save!

game4 = Game.new(
  user: user2,
  name:"SmallWorld",
  description: "Évalue tes connaissances de 1 à 10 et réponds aux questions !",
  state: "new",
  price: 13,
  picture: "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850045/smallworld.jpg",
  )

game4.remote_photo_url = "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850045/smallworld.jpg"
game4.save!


game5 = Game.new(
  user: user2,
  name:"Qwirkle",
  description: "Quand les peuples s'affrontent dans un monde trop petit..!
   Smallworld est un jeu de stratégie et de plateau qui vous plonge dans un monde habité par des nains,
   des mages, des amazones, des géants, des orcs et même des humains !",
  state: "new",
  price: 15,
  picture: "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850048/qwirkle.jpg",
  )

game5.remote_photo_url = "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850048/qwirkle.jpg"
game5.save!

game6 = Game.new(
  user: user4,
  name:"Colt Express",
  description: "Développez vos terres et faites de votre royaume le plus grand et le plus riche dans ce jeu
    de cartes stratégique !",
  state: "used",
  price: 16,
  picture: "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850043/colt_express.jpg",
  )

game6.remote_photo_url = "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850043/colt_express.jpg"
game6.save!

game7 = Game.new(
  user: user4,
   name:"Splendor",
   description: "Unlock! 2 Mystery Adventures est un jeu de cartes coopératif inspiré des Escape Room.",
   price: 17.00,
   state: "used",
   picture: "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850043/aventurier_du_rail.jpg")

game7.remote_photo_url = "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850043/aventurier_du_rail.jpg"
game7.save!

game8 = Game.new(
  user: user3,
   name:"Detective",
   description: "Unlock! 2 Mystery Adventures est un jeu de cartes coopératif inspiré des Escape Room.",
   price: 17,
   state: "used",
   picture: "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850043/detective.jpg")

game8.remote_photo_url = "https://res.cloudinary.com/dx51mypmz/image/upload/v1550850043/detective.jpg"
game8.save!
p 'I create 7 new games'
p 'Finished !'
