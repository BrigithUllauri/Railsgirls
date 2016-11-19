class CreateHelados < ActiveRecord::Migration
  def change
    create_table :helados do |t|
      t.string :Nombre
      t.string :Descripcion
      t.string :Picture
      t.float :Precio

      t.timestamps null: false
    end
  end
end
