# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Generar 10 clientes ficticios
10.times do
  Cliente.create(
    nombre: Faker::Name.name, email: Faker::Internet.email, telefono: Faker::PhoneNumber.phone_number)
end

# Generar 20 películas ficticias
20.times do
  Pelicula.create(titulo: Faker::Movie.title)
end
