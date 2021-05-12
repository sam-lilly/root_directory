class AddTypeColumnToPlanters < ActiveRecord::Migration[5.2]
  def change

    add_column :planters, :type, :string, presence: true
    add_index :planters, :type

  end
end
