class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.string :color
      t.string :make
      t.string :model

      t.timestamps null: false
    end
  end
end
