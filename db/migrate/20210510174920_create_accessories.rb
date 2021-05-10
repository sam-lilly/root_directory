class CreateAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :accessories do |t|
      t.integer :product_id, null: false
      t.string :name, null: false
      t.float :price, null: false
      t.text :overview, null: false
      t.text :details, null: false
      t.text :dimensions, null: false

      t.timestamps
    end

    add_index :accessories, :product_id
    add_index :accessories, :name
    add_index :accessories, :price
  end
end
