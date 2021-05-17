class Plant < ApplicationRecord

    SIZES = %w(small medium large hanging)
    LIGHTS = %w(low medium high)
    CARE_LEVELS = %w(beginners experienced adept)
    BENEFITS = ["air purifying", "easy plants", "pet friendly", "drought tolerant"]


    validates :product_id, :plant_db_id, :name, :inches, :price, :plant_type, :size, :light, :care_level, :benefits, :overview,  :height, :lighting, :care, :lightreq, :water, :humidity, presence: true
    
    
    # monst = Plant.create!(product_id: 1, plant_db_id: 1, name: "Monstera Test", inches: 10, price: 150.90, plant_type: "test", size: "large", light: "medium", care_level: "beginners", benefits: "easy plants", overview: "overview test", care: "don't kill it")


    validates :size, inclusion: { in: SIZES }
    validates :light, inclusion: { in: LIGHTS }
    validates :care_level, inclusion: { in: CARE_LEVELS }
    validates :benefits, inclusion: { in: BENEFITS }

    
    has_one_attached :photomain

    has_one_attached :photohover


    # belongs_to :product,
    #     primary_key: :id,
    #     foreign_key: :product_id,
    #     class_name: :Product

    # belongs_to :plant_db,
    #     primary_key: :id,
    #     foreign_key: :plant_db_id,
    #     class_name: :PlantDb

end