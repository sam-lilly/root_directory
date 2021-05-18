# == Schema Information
#
# Table name: cart_items
#
#  id         :bigint           not null, primary key
#  quantity   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cart_id    :integer          not null
#  product_id :integer          not null
#
# Indexes
#
#  index_cart_items_on_cart_id     (cart_id)
#  index_cart_items_on_product_id  (product_id)
#
class CartItem < ApplicationRecord

    atrr_accessor :quantity

    validates :cart_id, :product_id, :quantity, presence: true

    belongs_to :cart,
        primary_key: :id,
        foreign_key: :cart_id,
        class_name: :Cart
    
    belongs_to :product,
        primary_key: :id,
        foreign_key: :product_id,
        class_name: :Product

    
end
