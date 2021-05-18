# == Schema Information
#
# Table name: planters
#
#  id           :bigint           not null, primary key
#  color        :string           not null
#  details      :text             not null
#  dimensions   :text             not null
#  inches       :integer
#  material     :string           not null
#  name         :string           not null
#  overview     :text             not null
#  planter_type :string           not null
#  price        :float            not null
#  size         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  product_id   :integer          not null
#
# Indexes
#
#  index_planters_on_color         (color)
#  index_planters_on_material      (material)
#  index_planters_on_name          (name)
#  index_planters_on_planter_type  (planter_type)
#  index_planters_on_price         (price)
#  index_planters_on_product_id    (product_id)
#  index_planters_on_size          (size)
#
class Planter < ApplicationRecord

    COLORS = ["white", "pale salmon", "stone", "terracotta", "black"]
    MATERIALS = ["ceramic", "fiberstone", "recyclable plastic"]

    validates :product_id, :name, :price, :inches, :planter_type, :size, :color, :material, :overview, :details, :dimensions, presence: true

    validates :color, inclusion: { in: COLORS }
    validates :material, inclusion: { in: MATERIALS }

    
    has_one_attached :photomain

    has_one_attached :photohover

    has_one_attached :video


    belongs_to :product,
        primary_key: :id,
        foreign_key: :product_id,
        class_name: :Product


end
