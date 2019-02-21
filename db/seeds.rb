# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'I destroy all games'
Game.destroy_all
p 'I destroy all users'
User.destroy_all

p 'I create 2 users'
user1 = User.new(
  first_name: "John",
  last_name: "Lennon",
  email: "john@lennon.com",
  address: "20 rue des capucins, Lyon",
  phone_number:"555-345-322",
  password: "secret")

user1.remote_photo_url = "https://thispersondoesnotexist.com/"
user1.save!

user2 = User.new(
  first_name: "Matthew",
  last_name: "Bellamy",
  email: "matthew@bellamy.com",
  address: "Martin de los heros 59, Madrid",
  phone_number:"555-345-322",
  password: "secret")

user2.remote_photo_url = "https://thispersondoesnotexist.com/"
user2.save!

p 'creating games...'
game1 = Game.new(
  user: user1,
  name:"Les aventuriers du rail",
  description: "Les Aventuriers du Rail - Europe  est le deuxième volume de la célèbre série des Aventuriers du Rail dont la version de base se joue sur une carte des USA. Plus qu'une nouvelle carte, cette version incorpore de nouvelles routes (tunnels et ferries), et de nouvelles pièces de jeu, les gares.",
  state: "used",
  price: 11,
  picture: "https://www.espritjeu.com/upload/image/les-aventuriers-du-rail---europe-p-image-59803-grande.jpg")

game1.remote_photo_url = "https://www.espritjeu.com/upload/image/les-aventuriers-du-rail---europe-p-image-59803-grande.jpg"
game1.save!

game2 = Game.new(
  user: user1,
  name:"7 wonders",
  description: "L'Antiquité et ses merveilles. Revivez l'épopée des grandes constructions avec ce jeu de cartes et de stratégie !",
  state: "used",
  price: 12,
  picture: "https://cdn3.philibertnet.com/310399-large_default/7-wonders-vf.jpg",
  buyer_id: user2.id)

game2.remote_photo_url = "https://cdn3.philibertnet.com/310399-large_default/7-wonders-vf.jpg"
game2.save!

game3 = Game.new(
  user: user2,
  name:"Code Names",
  description: "Jouez les espions et retrouvez vos alliés avec des Noms de Code! Codenames est un jeu d'expression, d'association d'idées et de déduction qui se joue en équipe.",
  state: "new",
  price: 13,
  picture: "https://static.fnac-static.com/multimedia/Images/FR/NR/c1/b8/78/7911617/1540-1/tsp20160826112220/Codenames-Iello.jpg")

game3.remote_photo_url = "https://static.fnac-static.com/multimedia/Images/FR/NR/c1/b8/78/7911617/1540-1/tsp20160826112220/Codenames-Iello.jpg"
game3.save!

game4 = Game.new(
  user: user2,
  name:"Tu te mets combien ?",
  description: "Évalue tes connaissances de 1 à 10 et réponds aux questions !",
  state: "new",
  price: 13,
  picture: "https://cdn3.philibertnet.com/419835-large_default/ttmc-tu-te-mets-combien-.jpg")

game4.remote_photo_url = "https://cdn3.philibertnet.com/419835-large_default/ttmc-tu-te-mets-combien-.jpg"
game4.save!


game5 = Game.new(
  user: user2,
  name:"Small World",
  description: "Quand les peuples s'affrontent dans un monde trop petit..!
   Smallworld est un jeu de stratégie et de plateau qui vous plonge dans un monde habité par des nains,
   des mages, des amazones, des géants, des orcs et même des humains !",
  state: "new",
  price: 15,
   picture: "https://cdn2.philibertnet.com/385636-large_default/small-world.jpg")

game5.remote_photo_url = "https://cdn2.philibertnet.com/385636-large_default/small-world.jpg"
game5.save!

game6 = Game.new(
  user: user1,
  name:"Dominion",
  description: "Développez vos terres et faites de votre royaume le plus grand et le plus riche dans ce jeu
    de cartes stratégique !",
  state: "used",
  price: 16,
  picture: "https://www.espritjeu.com/upload/image/dominion-p-image-56141-grande.jpg")

game6.remote_photo_url = "https://www.espritjeu.com/upload/image/dominion-p-image-56141-grande.jpg"
game6.save!

game7 = Game.new(
  user: user1,
   name:"Unlock 2!",
   description: "Unlock! 2 Mystery Adventures est un jeu de cartes coopératif inspiré des Escape Room.",
   price: 17,
   state: "used",
   picture: "https://www.espritjeu.com/upload/image/unlock--2---mystery-adventures-p-image-62011-grande.jpg")

game7.remote_photo_url = "https://www.espritjeu.com/upload/image/unlock--2---mystery-adventures-p-image-62011-grande.jpg"
game7.save!
p 'I create 7 new games'
p 'Finished !'
