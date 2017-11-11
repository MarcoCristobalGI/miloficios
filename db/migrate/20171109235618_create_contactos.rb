class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.string :direccion
      t.string :telefono
      t.string :ocupacion
      t.timestamps null: false
    end
  end
end
