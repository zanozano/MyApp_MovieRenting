class CreatePeliculas < ActiveRecord::Migration[7.0]
  def change
    create_table :peliculas do |t|
      t.string :titulo
      t.string :descripcion
      t.string :portada
      t.timestamps
    end
  end
end
