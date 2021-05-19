json.key_format! camelize: :lower

if @orders
    @orders.each do |order|
        json.set! order.id do
            json.extract! order, :id, :user_id, :cart_id, :address_id, :delivery_date, :delivery_type, :order_total, :address
        end
    end
else
    return null
end