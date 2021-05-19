json.key_format! camelize: :lower

if @addresses
    @addresses.each do |address|
        json.set! address.id do
            json.extract! address, :id, :user_id, :first, :last, :company, :address1, :address2, :city, :state, :country, :zip, :phone
        end
    end
else
    return null
end
