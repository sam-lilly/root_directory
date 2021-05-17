json.key_format! camelize: :lower

if @addresses
    @addresses.each do |address|
        json.set! address.id do
            json.extract! address, :id, :user_id, :first_name, :last_name, :company, :address_1, :address_2, :city, :state, :country, :zip_code, :phone_number
        end
    end
else
    return null;
end
