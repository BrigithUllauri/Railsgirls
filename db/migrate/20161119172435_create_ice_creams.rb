class CreateIceCreams < ActiveRecord::Migration
  def change
    create_table :ice_creams do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.float :price

      t.timestamps null: false
    end
  end
end
