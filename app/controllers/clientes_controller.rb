class ClientesController < ApplicationController
    def index
    @clientes_disponibles = Cliente.all
    end
end
