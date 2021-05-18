# == Schema Information
#
# Table name: plants
#
#  id          :bigint           not null, primary key
#  benefits    :string           not null
#  care        :text             not null
#  care_level  :string           not null
#  height      :string
#  humidity    :string
#  inches      :integer          not null
#  light       :string           not null
#  lighting    :string
#  lightreq    :string
#  name        :string           not null
#  overview    :text             not null
#  plant_type  :string           not null
#  price       :float            not null
#  size        :string           not null
#  water       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  plant_db_id :integer          not null
#  product_id  :integer          not null
#
# Indexes
#
#  index_plants_on_benefits     (benefits)
#  index_plants_on_care_level   (care_level)
#  index_plants_on_inches       (inches)
#  index_plants_on_light        (light)
#  index_plants_on_name         (name)
#  index_plants_on_plant_db_id  (plant_db_id)
#  index_plants_on_plant_type   (plant_type)
#  index_plants_on_price        (price)
#  index_plants_on_product_id   (product_id)
#  index_plants_on_size         (size)
#
class Plant < ApplicationRecord

    SIZES = %w(small medium large hanging)
    LIGHTS = %w(low medium high)
    CARE_LEVELS = %w(beginners experienced adept)
    BENEFITS = ["air purifying", "easy plants", "pet friendly", "drought tolerant"]


    validates :product_id, :plant_db_id, :name, :inches, :price, :plant_type, :size, :light, :care_level, :benefits, :overview,  :height, :lighting, :care, :lightreq, :water, :humidity, presence: true
    

    validates :size, inclusion: { in: SIZES }
    validates :light, inclusion: { in: LIGHTS }
    validates :care_level, inclusion: { in: CARE_LEVELS }
    validates :benefits, inclusion: { in: BENEFITS }

    
    has_one_attached :photomain

    has_one_attached :photohover


    belongs_to :product,
        primary_key: :id,
        foreign_key: :product_id,
        class_name: :Product

    # belongs_to :plant_db,
    #     primary_key: :id,
    #     foreign_key: :plant_db_id,
    #     class_name: :PlantDb

    
end
