class PeliculasController < ApplicationController
    def show
    @pelicula = Pelicula.find(params[:id])
    end
end
