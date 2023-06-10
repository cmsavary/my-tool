require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# Character.create(name: "Luke", movie: movies.first)

# if Rails.env.development?

Booking.destroy_all
Tool.destroy_all
User.destroy_all

# end

p "creating user"

file = URI.open("https://fr.web.img4.acsta.net/r_1280_720/medias/nmedia/18/65/34/85/18881126.jpg")

user1 = User.new(
  name: "Alfonse Dupont",
  email: "a.dupont@gmail.com",
  password: "1234567",
  address: "125 avenue du Maine 75014 Paris"
)

user1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save!

file = URI.open("https://fr.web.img4.acsta.net/videothumbnails/18/01/04/10/54/0268683.jpg")
user2 = User.new(
  name: "Pierre Leglandu",
  email: "leglandu@yahoo.com",
  password: "1234567",
  address: "47 boulevard de la République 92210 Saint-Cloud"
)

user2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user2.save!

file = URI.open("https://hips.hearstapps.com/hmg-prod/images/where-to-watch-stream-megan-movie-1673033732.png?crop=1xw:0.7905165615141956xh;center,top")
user3 = User.new(
  name: "Mary Martin",
  email: "marym@yahoo.fr",
  password: "1234567",
  address: "40 rue Nationale 92100 Boulogne-Billancourt"
)

user3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user3.save!

p "creating tool"
file_1 = URI.open("https://media.gettyimages.com/id/157720585/fr/photo/rolling-spaghettis-la-voie-rapide.jpg?s=612x612&w=gi&k=20&c=HXzyc_jJs2qjOo2s9ekDChn5edWcL8eCfMt2JZLH9q8=")
file_2 = URI.open("https://i.ytimg.com/vi/XU4GJFRgDpY/maxresdefault.jpg")

tool1 = Tool.new(
  name: "perceuse-visseuse",
  detail: "Engrenage 2 vitesses et 20 positions de présélection de couple.
  Forme sobre et ergonomique pour un grand confort d’utilisation
  Éclairage LED pour une visibilité optimale de la zone de travail
  Idéale pour les projets de perçage dans le bois, le métal, les plastiques et pour les vissages
  POWER FOR ALL : une batterie et un chargeur suffisent pour tout un système d’outils de la gamme Home & Garden
  Sans batterie ni chargeur",
  price: 45,
  address: "125 avenue du Maine 75014 Paris"
)

tool1.photos.attach(io: file_1, filename: "nes.png", content_type: "image/png")
tool1.photos.attach(io: file_2, filename: "nes_2.png", content_type: "image/png")

tool1.user = user1
tool1.save!

file = URI.open("https://image.spreadshirtmedia.net/image-server/v1/compositions/T1187A2PA4233PT17X8Y13D182066347W30395H30395/views/1,width=550,height=550,appearanceId=2,backgroundColor=000000,noPt=true/tournevis-breton-humour-bretagne-idee-cadeau-sweat-shirt-bio-homme.jpg")
tool2 = Tool.new(
  name: "tournevis",
  detail: "ergonomique, prêt à faire tourner les têtes",
  price: 15,
  address: "47 boulevard de la République 92210 Saint-Cloud"
)

tool2.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool2.user = user2
tool2.save!

file = URI.open("https://i.skyrock.net/0195/3500195/pics/3312301372_2_3_18UkKx1C.jpg")
tool3 = Tool.new(
  name: "scie sauteuse",
  detail: "une scie des plus épatantes, pour sûr, elle va vous scier !",
  price: 65,
  address: "40 rue Nationale 92100 Boulogne-Billancourt"
)
tool3.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool3.user = user3
tool3.save!

file = URI.open("https://img.freepik.com/photos-gratuite/sang-marteau_144627-5998.jpg")
tool4 = Tool.new(
  name: "marteau",
  detail: "élégant, racé, ne pas utiliser en cas de rage",
  price: 25,
  address: "125 avenue du Maine 75014 Paris"
)
tool4.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool4.user = user1
tool4.save!

file = URI.open("https://maison.20minutes.fr/wp-content/uploads/2020/05/pince-istock.jpg")
tool5 = Tool.new(
  name: "pince",
  detail: "facile à régler, généreuse comme son nom ne l'indique pas, économique",
  price: 15,
  address: "47 boulevard de la République 92210 Saint-Cloud"
)
tool5.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool5.user = user2
tool5.save!

file = URI.open("https://maison.20minutes.fr/wp-content/uploads/2020/05/scie-pixabay.jpg")
tool6 = Tool.new(
  name: "scie",
  detail: "une scie des plus épatantes, pour sûr, elle va vous scier !",
  price: 65,
  address: "40 rue Nationale 92100 Boulogne-Billancourt"
)
tool6.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool6.user = user3
tool6.save!

file = URI.open("https://maison.20minutes.fr/wp-content/uploads/2020/05/metre-istock.jpg")
tool7 = Tool.new(
  name: "mètre",
  detail: "adaptable à toutes surfaces, prêt à tout mesurer",
  price: 17,
  address: "125 avenue du Maine 75014 Paris"
)
tool7.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool7.user = user1
tool7.save!

file = URI.open("https://maison.20minutes.fr/wp-content/uploads/2020/05/niveau-a-bulles-pixabay-jarmoluk.jpg")
tool8 = Tool.new(
  name: "niveau à bulles",
  detail: "pour buller au carré",
  price: 12,
  address: "47 boulevard de la République 92210 Saint-Cloud"
)
tool8.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool8.user = user2
tool8.save!

file = URI.open("https://maison.20minutes.fr/wp-content/uploads/2020/05/28859.jpg")
tool9 = Tool.new(
  name: "serre-joint",
  detail: "pure qualité, pour tous les bricoleurs en herbe",
  price: 30,
  address: "40 rue Nationale 92100 Boulogne-Billancourt"
)
tool9.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool9.user = user3
tool9.save!

file = URI.open("https://maison.20minutes.fr/wp-content/uploads/2020/05/ponceuse-pixabay-pix1861.jpg")
tool10 = Tool.new(
  name: "ponceuse électrique",
  detail: "maniable, rapide, idéale pour manucure et pieds",
  price: 55,
  address: "125 avenue du Maine 75014 Paris"
)
tool10.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool10.user = user1
tool10.save!

file = URI.open("https://maison.20minutes.fr/wp-content/uploads/2020/05/agrafeuse-istock.jpg")
tool11 = Tool.new(
  name: "agrafeuse",
  detail: "à n'utiliser qu'en dernier recours avec sa belle-mère",
  price: 40,
  address: "47 boulevard de la République 92210 Saint-Cloud"
)
tool11.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool11.user = user2
tool11.save!

file = URI.open("https://maison.20minutes.fr/wp-content/uploads/2020/05/boite-a-onglet-dexter-castorama.jpg")
tool12 = Tool.new(
  name: "scie égoïne",
  detail: "de marque Dexter, CQFD",
  price: 75,
  address: "40 rue Nationale 92100 Boulogne-Billancourt"
)
tool12.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
tool12.user = user3
tool12.save!
