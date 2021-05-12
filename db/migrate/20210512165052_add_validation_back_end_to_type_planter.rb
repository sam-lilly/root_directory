class AddValidationBackEndToTypePlanter < ActiveRecord::Migration[5.2]
  def change

    remove_column :planters, :type
    add_column :planters, :type, :string, null: false
    add_index :planters, :type

  end
end
