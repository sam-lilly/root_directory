json.key_format! camelize: :lower

if current_user
    json.extract! @cart, :id, :user_id, :items

    price_count = 0

    json.items @cart.items do |item|
        if item.product.category == "plant"
            price_count += (item.product.plant.price * item.quantity)
            json.id item.id
            json.name item.product.plant.name
            json.price item.product.plant.price
            json.quantity item.quantity
            json.photoCheckoutUrl url_for(item.product.plant.photomain)
            

        elsif # item.product.category == "product"
            # debugger
            price += (item.product.planter.price * item.quantity)
            json.id item.id
            json.name item.product.planter.name
            json.price item.product.planter.price
            json.quantity item.quantity
            json.photoCheckoutUrl url_for(item.product.planter.photomain)
        end
    end

end

json.total_price price_count

if current_user && Address.all.select{ |add| add.user_id == current_user.id }.first
    json.address_id Address.all.select{ |add| add.user_id == current_user.id }.first.id
end
