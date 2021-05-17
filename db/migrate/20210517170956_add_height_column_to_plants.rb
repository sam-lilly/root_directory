class AddHeightColumnToPlants < ActiveRecord::Migration[5.2]
  def change

    add_column :plants, :height, :string

  end
end
