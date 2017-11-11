class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :empleador
      t.string :nombres
      t.string :apellidos
      t.string :telefono
      t.string :correo

      t.timestamps null: false
    end
  end
end
