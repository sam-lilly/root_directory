json.key_format! camelize: :lower

json.extract! @address, :id, :user_id, :first, :last, :company, :address1, :address2, :city, :state, :country, :zip, :phone
