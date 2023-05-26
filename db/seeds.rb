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

    pelicula_data = results.first

    nueva_pelicula = Pelicula.create(
      titulo: pelicula_data['title'],
      portada: pelicula_data['poster_path'],
      descripcion: pelicula_data['overview']
    )
  else
    puts "Error en la solicitud: #{response.code} - #{response.message}"
  end
end

