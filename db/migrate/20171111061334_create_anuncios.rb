class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.string :titulo
      t.string :contenido
      t.date :fecha
      t.string :requisitos
      t.integer :vacante

      t.timestamps null: false
    end
  end
end
