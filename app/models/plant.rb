class Plant < ApplicationRecord

    SIZES = %w(small medium large hanging)
    LIGHTS = %w(low medium high)
    CARE_LEVELS = %w(beginners experienced adept)
    BENEFITS = ["air purifying", "easy plants", "pet friendly", "drought tolerant"]


    validates :product_id, :plant_db_id, :name, :inches, :price, :type, :size, :light, :care_level, :benefits, :overview, :care, presence: true

    validates :size, inclusion: { in: SIZES }
    validates :light, inclusion: { in: LIGHTS }
    validates :care_level, inclusion: { in: CARE_LEVELS }
    validates :benefits, inclusion: { in: BENEFITS }


    belongs_to :product,
        primary_key: :id,
        foreign_key: :product_id,
        class_name: :Product

    belongs_to :plant_db,
        primary_key: :id,
        foreign_key: :plant_db_id,
        class_name: :PlantDb

end