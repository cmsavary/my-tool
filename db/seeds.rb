# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Tool.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

Tool.create!(
  name: "perceuse-visseuse",
  detail: "L’engrenage 2 vitesses et les 20 positions de présélection de couple permettent de disposer d’une puissance et d’une vitesse de rotation adaptées à chaque application
  Forme sobre et ergonomique pour un grand confort d’utilisation
  Éclairage LED pour une visibilité optimale de la zone de travail
  Idéale pour les projets de perçage dans le bois, le métal, les plastiques et pour les vissages
  POWER FOR ALL : une batterie et un chargeur suffisent pour tout un système d’outils de la gamme Home & Garden
  Sans batterie ni chargeur",
  price: 45
)

Tool.create!(
  name: "tournevis cruciforme",
  detail: "rouge, pratique",
  price: 10
)

Tool.create!(
  name: "scie sauteuse",
  detail: "une scie des plus pratiques",
  price: 65
)

User.create!(
  name: "Alfonse Dupont",
  email: "a.dupont@gmail.com",
  password: "1234567"
)

User.create!(
  name: "Pierre Leglandu",
  email: "leglandu@yahoo.com",
  password: "1234567"
)

User.create!(
  name: "Mary Martin",
  email: "marym@yahoo.fr",
  password: "1234567"
)
