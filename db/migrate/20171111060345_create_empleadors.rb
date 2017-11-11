class CreateEmpleadors < ActiveRecord::Migration
  def change
    create_table :empleadors do |t|
      t.string :nombres
      t.string :apellidos
      t.string :telefono
      t.string :correo

      t.timestamps null: false
    end
  end
end
