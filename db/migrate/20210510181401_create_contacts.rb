class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name_company, null: false
      t.string :email, null: false
      t.string :phone_number, null: false
      t.string :reference, null: false
      t.text :body, null: false

      t.timestamps
    end

    add_index :contacts, :email
  end
end
