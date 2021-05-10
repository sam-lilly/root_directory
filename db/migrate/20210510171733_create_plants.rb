class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.integer :product_id, null: false
      t.integer :plant_db_id, null: false
      t.string :name, null: false
      t.integer :inches, null: false
      t.float :price, null: false
      t.string :type, null: false
      t.string :size, null: false
      t.string :light, null: false
      t.string :care_level, null: false
      t.string :benefits, null: false
      t.text :overview, null: false
      t.text :care, null: false

      t.timestamps
    end

    add_index :plants, :product_id
    add_index :plants, :plant_db_id
    add_index :plants, :name
    add_index :plants, :inches
    add_index :plants, :price
    add_index :plants, :type
    add_index :plants, :size
    add_index :plants, :light
    add_index :plants, :care_level
    add_index :plants, :benefits
  end
end
