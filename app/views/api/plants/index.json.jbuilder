debugger
json.array! @plants do |plant|
    debugger
    json.extract! plant, :id, :product_id, :plant_db_id, :name, :inches, :price, :plant_type, :size, :light, :care_level, :benefits, :overview, :care
    debugger
    json.photoUrl url_for(plant.photo)
end