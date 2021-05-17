class AddColumnsToPlantsTable < ActiveRecord::Migration[5.2]
  def change

    add_column :plants, :lighting, :string
    add_column :plants, :lightreq, :string
    add_column :plants, :water, :string
    add_column :plants, :humidity, :string

  end
end
