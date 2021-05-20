json.key_format! camelize: :lower
# debugger

quant_count = Hash.new(0)
@cart_items.each { |item| quant_count[item.product_id] += 1 }
# returns this
# {3=>4, 1=>4, 2=>4, 4=>1, 6=>1, 8=>1, 11=>1, 12=>1}

# this gives all product ID then quantity, somehow extract the info from them  ??


unique_array = []
product_id_array = []
# debugger
@cart_items.each do |item|
    if !product_id_array.include?(item.product_id)
        product_id_array.push(item.product_id)
        unique_array.push(item)
    end
end

# debugger

# if @cart_items
#     unique_array.each do |cart_item|
#         json.set! cart_item.id do
#             json.extract! cart_item, :id, :cart_id, :product_id, :quantity, :product, :cart
#             json.quantity quant_count[cart_item.product_id]

#         end
#     end
# else
#     return null
# end


if @cart_items 
    # debugger
    unique_array.each do |item|
        # debugger
        json.set! item.id do
            json.extract! item, :id, :cart_id, :product_id
            json.quantity quant_count[item.product_id]
            if item.product.category == "plant"
                json.id item.id
                json.name item.product.plant.name
                json.price item.product.plant.price
                json.photoCheckoutUrl url_for(item.product.plant.photomain)
            elsif # item.product.category == "product"
                # debugger
                json.id item.id
                json.name item.product.planter.name
                json.price item.product.planter.price
                json.quantity item.quantity
                json.photoCheckoutUrl url_for(item.product.planter.photomain)
            end
        end
    end
end


# json.extract! @cart, :id, :user_id, :items

# json.items @cart.items do |item|
#     if item.product.category == "plant"
#         # debugger
#         json.id item.id
#         json.name item.product.plant.name
#         json.price item.product.plant.price
#         json.quantity item.quantity
#         json.photoCheckoutUrl url_for(item.product.plant.photomain)
        
#         # debugger

#     elsif # item.product.category == "product"
#         # debugger
#         json.id item.id
#         json.name item.product.planter.name
#         json.price item.product.planter.price
#         json.quantity item.quantity
#         json.photoCheckoutUrl url_for(item.product.planter.photomain)
#     end
# end
