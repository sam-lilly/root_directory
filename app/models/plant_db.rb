# == Schema Information
#
# Table name: plant_dbs
#
#  id                                   :bigint           not null, primary key
#  additional_care_guides               :text
#  faq                                  :text
#  name                                 :string           not null
#  placement                            :text
#  recommended_accessories              :text
#  recommended_pots                     :text
#  routine_maintenance                  :text
#  self_watering_container_instructions :text
#  standard_planter_instructions        :text
#  created_at                           :datetime         not null
#  updated_at                           :datetime         not null
#  plant_id                             :integer          not null
#
# Indexes
#
#  index_plant_dbs_on_name      (name)
#  index_plant_dbs_on_plant_id  (plant_id)
#
class PlantDb < ApplicationRecord

end
