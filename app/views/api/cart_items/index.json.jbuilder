json.key_format! camelize: :lower

if @cart_items
    @cart_items.each do |cart_item|
        json.set! cart_item.id do
            json.extract! cart_item, :id, :cart_id, :product_id, :quantity, :product, :cart
            # should i be calling my associations here? :cart, :product??? IDK!
        end
    end
else
    return null
end