class Plant < ApplicationRecord

    validates :product_id, :plant_db_id, :name, :inches, :price, :type, :size, :light, :care_level, :benefits, :overview, :care, presence: true

    # need to add a lot more to this


    belongs_to :product,
        primary_key: :id,
        foreign_key: :product_id,
        class_name: :Product

    belongs_to :plant_db,
        primary_key: :id,
        foreign_key: :plant_db_id,
        class_name: :PlantDb

end