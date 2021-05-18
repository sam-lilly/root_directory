# == Schema Information
#
# Table name: orders
#
#  id            :bigint           not null, primary key
#  delivery_date :datetime         not null
#  delivery_type :string           not null
#  order_total   :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  address_id    :integer          not null
#  cart_id       :integer          not null
#  user_id       :integer          not null
#
# Indexes
#
#  index_orders_on_address_id  (address_id)
#  index_orders_on_cart_id     (cart_id)
#  index_orders_on_user_id     (user_id)
#
class Order < ApplicationRecord

    DELIVERIES = %w(pickup delivery shipping)

    validates :user_id, :cart_id, :address_id, :delivery_date, :delivery_type, :order_total, presence: true

    validates :delivery_type, inclusion: { in: DELIVERIES }


    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :cart,
        primary_key: :id,
        foreign_key: :cart_id,
        class_name: :Cart

    has_one :address,
        primary_key: :id,
        foreign_key: :addres_id,
        class_name: :Address


end
