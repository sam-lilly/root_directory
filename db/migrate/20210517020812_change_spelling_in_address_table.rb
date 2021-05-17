class ChangeSpellingInAddressTable < ActiveRecord::Migration[5.2]
  def change

    rename_column :addresses, :addess_2, :address_2

  end
end
