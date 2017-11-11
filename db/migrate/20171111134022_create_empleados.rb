class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellidos
      t.string :oficio
      t.string :telefono
      t.string :direccion

      t.timestamps null: false
    end
  end
end
