# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(first_name: "John", last_name: "Lennon")


p 'I destroy all games'
Game.destroy_all
p 'I create 7 new games'
Game.create(name:"Les aventuriers du rail", description: "Les Aventuriers du Rail - Europe  est le deuxième volume de la célèbre série des Aventuriers du Rail dont la version de base se joue sur une carte des USA. Plus qu'une nouvelle carte, cette version incorpore de nouvelles routes (tunnels et ferries), et de nouvelles pièces de jeu, les gares.", price: 11, picture: "https://www.espritjeu.com/upload/image/les-aventuriers-du-rail---europe-p-image-59803-grande.jpg")
Game.create(name:"7 wonders", description: "L'Antiquité et ses merveilles. Revivez l'épopée des grandes constructions avec ce jeu de cartes et de stratégie !
7 Wonders est un jeu de cartes et de stratégie qui vous propose de prendre la tête d’une prestigieuse civilisation et de la faire prospérer jusqu’à la victoire.", price: 12, picture: "https://cdn3.philibertnet.com/310399-large_default/7-wonders-vf.jpg")
Game.create(name:"Code Names", description: "Jouez les espions et retrouvez vos alliés avec des Noms de Code!
Codenames est un jeu d'expression, d'association d'idées et de déduction qui se joue en équipe.
", price: 13, picture: "https://static.fnac-static.com/multimedia/Images/FR/NR/c1/b8/78/7911617/1540-1/tsp20160826112220/Codenames-Iello.jpg")
Game.create(name:"Tu te mets combien ?", description: "
Évalue tes connaissances de 1 à 10 et réponds aux questions !
TTMC? : Tu Te Mets Combien ? est un jeu d'ambiance et de quizz de culture générale qui se peut se jouer jusqu'à 16 joueurs.", price: 14, picture: "https://cdn3.philibertnet.com/419835-large_default/ttmc-tu-te-mets-combien-.jpg")
Game.create(name:"Small World", description: "Quand les peuples s'affrontent dans un monde trop petit..!
Smallworld est un jeu de stratégie et de plateau qui vous plonge dans un monde habité par des nains, des mages, des amazones, des géants, des orcs et même des humains !", price: 15, picture: "https://cdn2.philibertnet.com/385636-large_default/small-world.jpg")
Game.create(name:"Dominion", description: "Développez vos terres et faites de votre royaume le plus grand et le plus riche dans ce jeu de cartes stratégique !", price: 16, picture: "https://www.espritjeu.com/upload/image/dominion-p-image-56141-grande.jpg")
Game.create(name:"Unlock 2!", description: "Unlock! 2 Mystery Adventures est un jeu de cartes coopératif inspiré des Escape Room.", price: 17, picture: "https://www.espritjeu.com/upload/image/unlock--2---mystery-adventures-p-image-62011-grande.jpg")
p 'Finished !'
