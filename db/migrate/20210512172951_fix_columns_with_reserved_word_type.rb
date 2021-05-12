class FixColumnsWithReservedWordType < ActiveRecord::Migration[5.2]
  def change

    rename_column :plants, :type, :plant_type
    rename_column :planters, :type, :planter_type

  end
end
