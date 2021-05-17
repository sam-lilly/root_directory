json.key_format! camelize: :lower

@plants.each do |plant|
    json.set! plant.id do    
        json.extract! plant, :id, :product_id, :plant_db_id, :name, :inches, :price, :plant_type, :size, :light, :care_level, :benefits, :overview,  :height, :lighting, :care, :lightreq, :water, :humidity
        json.photoMainUrl url_for(plant.photomain)
        json.photoHoverUrl url_for(plant.photohover)
    end
end