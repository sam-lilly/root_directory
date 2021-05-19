json.key_format! camelize: :lower

# debugger

# json.extract! @cart, :id, :user_id, :completed

# debugger


# json.id @cart.pluck(:id)[0]
# json.user_id @cart.pluck(:user_id)[0]
# json.completed @cart.pluck(:completed)[0]

json.extract! @cart, :id, :user_id


# NEED TO FIX THIS! ITS SO BAD


# json.items @cart.pluck(:items)

# json.items @cart.pluck(:items)
# *^ will need to save items once I start adding them

# json.completed do 
#     if @cart.
# end

# debugger

# json.planter do
#     if @planter.video
#         json.videoUrl nil
#     else
#         json.videoUrl url_for(@planter.video)
#     end
# end


# if @carts
#     @carts.each do |cart|
#         json.set! cart.id do
#             json.extract! cart, :id, :user_id, :first, :last, :company, :address1, :address2, :city, :state, :country, :zip, :phone
#         end
#     end
# else
#     return null
# end