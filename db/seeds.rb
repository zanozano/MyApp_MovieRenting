# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require 'httparty'

api_key = '4786d082d2c6c8c92c0bcf74f939777b'

10.times do
  Cliente.create(
    nombre: Faker::Name.name, email: Faker::Internet.email, telefono: Faker::PhoneNumber.phone_number)
end

20.times do
  query = Faker::Movie.title
  url = "https://api.themoviedb.org/3/search/movie?api_key=#{api_key}&query=#{query}"

  response = HTTParty.get(url)

  if response.code == 200
    data = JSON.parse(response.body)
    results = data['results']

    results.each do |result|
      puts result['title']
    end

    # Obtener los datos de la primera película de los resultados de la búsqueda
    pelicula_data = results.first

    # Crear una instancia de Pelicula y asignar los datos obtenidos de la API
    nueva_pelicula = Pelicula.create(
      titulo: pelicula_data['title'],
      portada: pelicula_data['poster_path'],
      descripcion: pelicula_data['overview']
    )
  else
    puts "Error en la solicitud: #{response.code} - #{response.message}"
  end
end

