class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :user_id, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :company
      t.string :address_1, null: false
      t.string :addess_2
      t.string :city, null: false
      t.string :state, null: false
      t.string :country, null: false
      t.string :zip_code, null: false
      t.string :phone_number, null: false

      t.timestamps
    end

    add_index :addresses, :user_id
  end
end
