json.key_format! camelize: :lower

json.extract! @plant, :id, :product_id, :plant_db_id, :name, :inches, :price, :plant_type, :size, :light, :care_level, :benefits, :overview,  :height, :lighting, :care, :lightreq, :water, :humidity
json.photoMainUrl url_for(@plant.photomain)
json.photoHoverUrl url_for(@plant.photohover)
# debugger
json.userid current_user.id
json.currentcart current_user.carts.where(completed: false).first.id

