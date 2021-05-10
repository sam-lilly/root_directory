class Product < ApplicationRecord

    CATEGORIES = %w(plants planters accessories)

    validates :category, presence: true

    validates :category, inclusion: { in: CATEGORIES }


end