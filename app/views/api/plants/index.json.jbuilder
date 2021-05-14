json.array! @plants do |plant|
    json.extract! plant, :id, :product_id, :plant_db_id, :name, :inches, :price, :plant_type, :size, :light, :care_level, :benefits, :overview, :care
    json.photoMainUrl url_for(plant.photomain)
    json.photoHoverUrl url_for(plant.photohover)
end