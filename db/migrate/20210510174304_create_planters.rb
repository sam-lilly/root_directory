class CreatePlanters < ActiveRecord::Migration[5.2]
  def change
    create_table :planters do |t|
      t.integer :product_id, null: false
      t.string :name, null: false
      t.float :price, null: false
      t.string :size, null: false
      t.string :color, null: false
      t.string :material, null: false
      t.text :overview, null: false
      t.text :details, null: false
      t.text :dimensions, null: false

      t.timestamps
    end

    add_index :planters, :product_id
    add_index :planters, :name
    add_index :planters, :price
    add_index :planters, :size
    add_index :planters, :color
    add_index :planters, :material
  end
end
