class Planter < ApplicationRecord

    COLORS = ["white", "pale salmon", "stone", "terracotta", "black"]
    MATERIALS = ["ceramic", "fiberstone", "recyclable plastic"]

    validates :product_id, :name, :price, :inches, :planter_type, :size, :color, :material, :overview, :details, :dimensions, presence: true

    validates :color, inclusion: { in: COLORS }
    validates :material, inclusion: { in: MATERIALS }

    
    has_one_attached :photomain

    has_one_attached :photohover

    has_one_attached :video


    # belongs_to :product,
    #     primary_key: :id,
    #     foreign_key: :product_id,
    #     class_name: :Product

end