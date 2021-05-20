json.key_format! camelize: :lower
debugger
if @cart_items
debugger
    @cart_items.each do |cart_item|
        debugger
        json.set! cart_item.id do
            json.extract! cart_item, :id, :cart_id, :product_id, :quantity, :product, :cart
            # should i be calling my associations here? :cart, :product??? IDK!
        end
    end
else
    return null
end