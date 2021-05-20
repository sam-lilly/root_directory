json.key_format! camelize: :lower

# debugger

json.extract! @cart, :id, :user_id, :items

json.items @cart.items do |item|
    if item.product.category == "plant"
        # debugger
        json.id item.id
        json.name item.product.plant.name
        json.price item.product.plant.price
        json.quantity item.quantity
        json.photoCheckoutUrl url_for(item.product.plant.photomain)
        
        # debugger

    elsif # item.product.category == "product"
        # debugger
        json.id item.id
        json.name item.product.planter.name
        json.price item.product.planter.price
        json.quantity item.quantity
        json.photoCheckoutUrl url_for(item.product.planter.photomain)
    end
end

# if @cart.items
    # @cart.items do |item|
    #     json.set! item.id do
    #         if item.product.category == "plant"
    #             json.name item.product.plant.name
    #             json.price item.product.plant.price
    #             json.quantity item.quantity   
    #         else item.product.category == "product"
    #             json.name item.product.planter.name
    #             json.price item.product.planter.price
    #             json.quantity item.quantity
    #         end
    #     end
    # end
# end


# json.extract! @cart, :id, :user_id, :completed

# debugger

# @cart.items.each do |item|
    
#     if item.product.category == "plant"
#         # debugger
#         json.name item.product.plant.name
#         json.price item.product.plant.price
#         json.quantity item.quantity
    
#     else item.product.category == "product"
#         json.name item.product.planter.name
#         json.price item.product.planter.price
#         json.quantity item.quantity
#     end

# end



# item.product_id = product_id
# # then need to find product from this

# if item.product.category == "plant"
#     json.name item.product.plant.name
#     json.price item.product.plant.price
#     json.quantity item.product.quantity

# else item.product.category == "product"
#     json.name item.product.planter.name
#     json.price item.product.planter.price
#     json.quantity item.product.planter.price


#     or

# item.product.planter

# item.product.plant.id gives the ID of the plant or planter