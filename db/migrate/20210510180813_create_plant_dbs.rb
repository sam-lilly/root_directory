class CreatePlantDbs < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_dbs do |t|
      t.integer :plant_id, null: false
      t.string :name, null: false
      t.text :placement
      t.text :routine_maintenance
      t.text :recommended_pots
      t.text :recommended_accessories
      t.text :faq
      t.text :standard_planter_instructions
      t.text :self_watering_container_instructions
      t.text :additional_care_guides

      t.timestamps
    end

    add_index :plant_dbs, :plant_id
    add_index :plant_dbs, :name
  end
end
