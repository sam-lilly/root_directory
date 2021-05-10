class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id, null: false
      t.integer :cart_id, null: false
      t.integer :address_id, null: false
      t.datetime :delivery_date, null: false
      t.string :delivery_type, null: false
      t.integer :order_total, null: false

      t.timestamps
    end

    add_index :orders, :user_id
    add_index :orders, :cart_id
    add_index :orders, :address_id
  end
end
