class AddInchesColumnToPlanters < ActiveRecord::Migration[5.2]
  def change

    add_column :planters, :inches, :integer

  end
end
