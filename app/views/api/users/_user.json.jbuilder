# debugger
json.extract! user, :id, :email, :first_name, :last_name

if current_user && current_user.addresses
    json.address Address.all.select{ |add| add.user_id == current_user.id }.first
    json.numAddresses Address.all.select{ |add| add.user_id == current_user.id }.size
end