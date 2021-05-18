# == Schema Information
#
# Table name: accessories
#
#  id         :bigint           not null, primary key
#  details    :text             not null
#  dimensions :text             not null
#  name       :string           not null
#  overview   :text             not null
#  price      :float            not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer          not null
#
# Indexes
#
#  index_accessories_on_name        (name)
#  index_accessories_on_price       (price)
#  index_accessories_on_product_id  (product_id)
#
class Accessory < ApplicationRecord

    validates :product_id, :name, :price, :overview, :details, :dimensions, presence: true

    belongs_to :product,
        primary_key: :id,
        foreign_key: :product_id,
        class_name: :Product

end
