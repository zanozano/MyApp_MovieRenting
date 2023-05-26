class Arriendo < ApplicationRecord
  belongs_to :cliente
  belongs_to :pelicula
end
