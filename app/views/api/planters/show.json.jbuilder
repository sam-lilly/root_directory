json.key_format! camelize: :lower

json.extract! @planter, :id, :product_id, :name, :planter_type, :price, :inches, :size, :color, :material, :overview, :details, :dimensions
json.photoMainUrl url_for(@planter.photomain)
json.photoHoverUrl url_for(@planter.photohover)
json.planter do
    if @planter.video
        json.videoUrl nil
    else
        json.videoUrl url_for(@planter.video)
    end
end