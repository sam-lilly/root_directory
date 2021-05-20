json.key_format! camelize: :lower

# debugger

json.extract! @cart, :id, :user_id

# json.extract! @cart, :id, :user_id, :completed

# debugger


# json.id @cart.pluck(:id)[0]
# json.user_id @cart.pluck(:user_id)[0]
# json.completed @cart.pluck(:completed)[0]

