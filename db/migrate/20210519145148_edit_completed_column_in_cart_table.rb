class EditCompletedColumnInCartTable < ActiveRecord::Migration[5.2]
  def change

    remove_column :carts, :completed
    add_column :carts, :completed, :boolean, default: false

  end
end
