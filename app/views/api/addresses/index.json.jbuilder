json.key_format! camelize: :lower

json.array! @addresses do |address|
    json.extract! address, :id, :user_id, :first_name, :last_name, :company, :address_1, :address_2, :city, :state, :country, :zip_code, :phone_number
end