# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  completed  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_carts_on_user_id  (user_id)
#
class Cart < ApplicationRecord

    attr_accessor :completed

    validates :user_id, presence: true
    
    # validates :completed, inclusion: { in: [true, false] }

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    has_many :items,
        primary_key: :id,
        foreign_key: :cart_id,
        class_name: :CartItem


    def checkout_cart
        Cart.where(id: self.id).update_all("completed = true")
    end



end
