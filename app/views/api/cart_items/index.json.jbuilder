json.key_format! camelize: :lower

quant_count = Hash.new(0)
# @cart_items.each { |item| quant_count[item.product_id] += 1 }
@cart_items.each { |item| quant_count[item.product_id] += item.quantity }
# returns this
# {3=>4, 1=>4, 2=>4, 4=>1, 6=>1, 8=>1, 11=>1, 12=>1}

# this gives all product ID then quantity, somehow extract the info from them  ??


unique_array = []
product_id_array = []
@cart_items.each do |item|
    if !product_id_array.include?(item.product_id)
        product_id_array.push(item.product_id)
        unique_array.push(item)
    end
end


price_count = 0
if @cart_items 
    unique_array.each do |item|
        json.set! item.id do
            json.extract! item, :id, :cart_id, :product_id, :quantity
            # debugger
            # json.quantity quant_count[item.product_id]
            if item.product.category == "plant"
                price_count += (item.product.plant.price * item.quantity)
                json.id item.id
                json.name item.product.plant.name
                json.price item.product.plant.price
                json.inches item.product.plant.inches
                json.photoCheckoutUrl url_for(item.product.plant.photomain)
            elsif # item.product.category == "product"
                price_count += (item.product.planter.price * item.quantity)
                json.id item.id
                json.name item.product.planter.name
                json.price item.product.planter.price
                json.inches item.product.planter.inches
                json.photoCheckoutUrl url_for(item.product.planter.photomain)
            end
        end
    end
end

# debugger
json.total_price price_count
json.address_id Address.all.select{ |add| add.user_id == current_user.id }.first.id
