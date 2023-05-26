class CreateArriendos < ActiveRecord::Migration[7.0]
  def change
    create_table :arriendos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :pelicula, null: false, foreign_key: true
      t.date :fecha_arriendo
      t.date :fecha_devolucion

      t.timestamps
    end
  end
end
