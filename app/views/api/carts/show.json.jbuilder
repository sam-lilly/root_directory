json.key_format! camelize: :lower

json.extract! @cart, :id, :user_id, :completed, :items

# do i need items association on here??