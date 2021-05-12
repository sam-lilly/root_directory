class Accessory < ApplicationRecord

    validates :product_id, :name, :price, :overview, :details, :dimensions, presence: true

    belongs_to :product,
        primary_key: :id,
        foreign_key: :product_id,
        class_name: :Product

end