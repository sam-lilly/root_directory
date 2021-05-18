class RenameAddressTableColumnsForSnakeToCamelCase < ActiveRecord::Migration[5.2]
  def change

    rename_column :addresses, :first_name, :first
    rename_column :addresses, :last_name, :last
    rename_column :addresses, :address_1, :address1
    rename_column :addresses, :address_2, :address2
    rename_column :addresses, :zip_code, :zip
    rename_column :addresses, :phone_number, :phone

  end
end
