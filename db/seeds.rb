# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"


User.destroy_all
Plant.destroy_all
Planter.destroy_all


# Users

demoUser = User.create!(email: "plantlyfe@gmail.com", password: "password", first_name: "Forrest", last_name: "Willow" )

demoAddress1 = Address.create!(
    user_id: demoUser.id,
    first: "Forrest",
    last: "Willow",
    address1: "427 Garden St",
    address2: "Apt 7E",
    city: "Brooklyn",
    state: "NY",
    country: "USA",
    zip: "11206",
    phone: "917.723.6142"
)

demoAddress2 = Address.create!(
    user_id: demoUser.id,
    first: "Ivy",
    last: "Willow",
    address1: "417 Elmhurst St",
    address2: "Apt 7F",
    city: "Brooklyn",
    state: "NY",
    country: "USA",
    zip: "11206",
    phone: "304.193.5645"
)

demoAddress3 = Address.create!(
    user_id: demoUser.id,
    first: "Scarlet",
    last: "Willow",
    address1: "13 Rainbow Rd",
    address2: "",
    city: "Asheville",
    state: "NC",
    country: "USA",
    zip: "28607",
    phone: "741.976.3982"
)

demoAddress4 = Address.create!(
    user_id: demoUser.id,
    first: "Forrest",
    last: "Willow",
    address1: "227 Starr St",
    address2: "Apt 2F",
    city: "Brooklyn",
    state: "NY",
    country: "USA",
    zip: "11206",
    phone: "304.395.4921"
)

demoAddress5 = Address.create!(
    user_id: demoUser.id,
    first: "Forrest",
    last: "Willow",
    address1: "415 Cedarwood Circle",
    address2: "Apt 2",
    city: "Asheville",
    state: "NC",
    country: "USA",
    zip: "28607",
    phone: "304.395.4921"
)


plant1 = Product.create!(category: "plant")
plant2 = Product.create!(category: "plant")
plant3 = Product.create!(category: "plant")
plant4 = Product.create!(category: "plant")
plant5 = Product.create!(category: "plant")
plant6 = Product.create!(category: "plant")
plant7 = Product.create!(category: "plant")
plant8 = Product.create!(category: "plant")
plant9 = Product.create!(category: "plant")
plant10 = Product.create!(category: "plant")
plant11 = Product.create!(category: "plant")
plant12 = Product.create!(category: "plant")

planter1 = Product.create!(category: "planter")
planter2 = Product.create!(category: "planter")
planter3 = Product.create!(category: "planter")
planter4 = Product.create!(category: "planter")
planter5 = Product.create!(category: "planter")
planter6 = Product.create!(category: "planter")
planter7 = Product.create!(category: "planter")
planter8 = Product.create!(category: "planter")
planter9 = Product.create!(category: "planter")
planter10 = Product.create!(category: "planter")
planter11 = Product.create!(category: "planter")
planter12 = Product.create!(category: "planter")


# Plants
# *** for care_level save info into a hash for ({care_level: "difficult", light_requirements: "lorem ipsum dolar", water_requirements: "lorem ipsum", humidity_preference: "lorem ipsum"})
# *** for overview save info into a hash for ({heigh: "stands 5-6 feet tall", light: "medium light, indirect", delivery: "local delivery in New York City area from $20+", sale: "Final Sale Only"})
# *** may need to do an array to be able to index into it

monstera_deliciosa_large = Plant.create!(
    product_id: plant1.id,
    plant_db_id: 1,
    name: "Monstera Deliciosa",
    inches: 10,
    price: 65,
    plant_type: "test",
    size: "medium",
    light: "medium",
    care_level: "beginners",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 2-3 feet tall",
    lighting: "Medium light, indirect",
    care: "Easy",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    monstera_deliciosa_large_main = File.open('app/assets/images/plants/monstera_deliciosa_large/main.jpeg')
    monstera_deliciosa_large.photomain.attach(io: monstera_deliciosa_large_main, filename: 'main.jpeg')

    monstera_deliciosa_large_hover = File.open('app/assets/images/plants/monstera_deliciosa_large/hover.jpeg')
    monstera_deliciosa_large.photohover.attach(io: monstera_deliciosa_large_hover, filename: 'hover.jpeg')

    # monstera_delicious_large_main = open("https://root-directory-seed.s3.amazonaws.com/back1.jpg")
    # assign it the same way//
    # attach it the same way//

philodendron_hope = Plant.create!(
    product_id: plant2.id,
    plant_db_id: 2,
    name: "Philodendron Hope",
    inches: 10,
    price: 65,
    plant_type: "test",
    size: "medium",
    light: "medium",
    care_level: "beginners",
    benefits: "air purifying",   
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 2-3 feet tall",
    lighting: "Medium light, indirect",
    care: "Easy",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    philodendron_hope_main = File.open('app/assets/images/plants/philodendron_hope/main.jpeg')
    philodendron_hope.photomain.attach(io: philodendron_hope_main, filename: 'main.jpeg')

    philodendron_hope_hover = File.open('app/assets/images/plants/philodendron_hope/hover.jpeg')
    philodendron_hope.photohover.attach(io: philodendron_hope_hover, filename: 'hover.jpeg')


monstera_deliciosa_small = Plant.create!(
    product_id: plant3.id,
    plant_db_id: 3,
    name: "Monstera Deliciosa",
    inches: 4,
    price: 14,
    plant_type: "test",
    size: "small",
    light: "medium",
    care_level: "beginners",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 8-14 inches tall",
    lighting: "Medium light, indirect",
    care: "Easy",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    monstera_deliciosa_small_main = File.open('app/assets/images/plants/monstera_deliciosa_small/main.jpeg')
    monstera_deliciosa_small.photomain.attach(io: monstera_deliciosa_small_main, filename: 'main.jpeg')

    monstera_deliciosa_small_hover = File.open('app/assets/images/plants/monstera_deliciosa_small/hover.jpeg')
    monstera_deliciosa_small.photohover.attach(io: monstera_deliciosa_small_hover, filename: 'hover.jpeg')
    

kentia_palm = Plant.create!(
    product_id: plant4.id,
    plant_db_id: 4,
    name: "Kentia Palm",
    inches: 10,
    price: 600,
    plant_type: "test",
    size: "large",
    light: "medium",
    care_level: "beginners",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 5-6 feet tall",
    lighting: "Medium light, indirect",
    care: "Easy",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."

)

    kentia_palm_main = File.open('app/assets/images/plants/kentia_palm/main.jpeg')
    kentia_palm.photomain.attach(io: kentia_palm_main, filename: 'main.jpeg')

    kentia_palm_hover = File.open('app/assets/images/plants/kentia_palm/hover.jpeg')
    kentia_palm.photohover.attach(io: kentia_palm_hover, filename: 'hover.jpeg')
    

fiddle_leaf = Plant.create!(
    product_id: plant5.id,
    plant_db_id: 5,
    name: "Fiddle Leaf Fig Tree",
    inches: 14,
    price: 600,
    plant_type: "test",
    size: "large",
    light: "high",
    care_level: "adept",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 5-6 feet tall",
    lighting: "High light, few hours of directt",
    care: "Difficult",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    fiddle_leaf_main = File.open('app/assets/images/plants/fiddle_leaf/main.jpeg')
    fiddle_leaf.photomain.attach(io: fiddle_leaf_main, filename: 'main.jpeg')

    fiddle_leaf_hover = File.open('app/assets/images/plants/fiddle_leaf/hover.jpeg')
    fiddle_leaf.photohover.attach(io: fiddle_leaf_hover, filename: 'hover.jpeg')
    

bird_of_paradise = Plant.create!(
    product_id: plant6.id,
    plant_db_id: 6,
    name: "Bird of Paradise",
    inches: 14,
    price: 235,
    plant_type: "test",
    size: "large",
    light: "medium",
    care_level: "beginners",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 4.5-5.5 feet tall",
    lighting: "Medium light, indirect",
    care: "Easy",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    bird_of_paradise_main = File.open('app/assets/images/plants/bird_of_paradise/main.jpeg')
    bird_of_paradise.photomain.attach(io: bird_of_paradise_main, filename: 'main.jpeg')

    bird_of_paradise_hover = File.open('app/assets/images/plants/bird_of_paradise/hover.jpeg')
    bird_of_paradise.photohover.attach(io: bird_of_paradise_hover, filename: 'hover.jpeg')


schefflera_amate = Plant.create!(
    product_id: plant7.id,
    plant_db_id: 7,
    name: "Schlefflera Amate",
    inches: 14,
    price: 195,
    plant_type: "test",
    size: "large",
    light: "medium",
    care_level: "experienced",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 5-7 feet tall",
    lighting: "Medium light, indirect",
    care: "Moderate",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    schefflera_amate_main = File.open('app/assets/images/plants/schefflera_amate/main.jpeg')
    schefflera_amate.photomain.attach(io: schefflera_amate_main, filename: 'main.jpeg')

    schefflera_amate_hover = File.open('app/assets/images/plants/schefflera_amate/hover.jpeg')
    schefflera_amate.photohover.attach(io: schefflera_amate_hover, filename: 'hover.jpeg')


calathea_ornata = Plant.create!(
    product_id: plant8.id,
    plant_db_id: 8,
    name: "Calathea Ornata",
    inches: 6,
    price: 25,
    plant_type: "test",
    size: "small",
    light: "medium",
    care_level: "experienced",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 12-14 inches tall",
    lighting: "Medium light, indirect",
    care: "Moderate",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    calathea_ornata_main = File.open('app/assets/images/plants/calathea_ornata/main.jpeg')
    calathea_ornata.photomain.attach(io: calathea_ornata_main, filename: 'main.jpeg')

    calathea_ornata_hover = File.open('app/assets/images/plants/calathea_ornata/hover.jpeg')
    calathea_ornata.photohover.attach(io: calathea_ornata_hover, filename: 'hover.jpeg')


sansevieria_laurentii = Plant.create!(
    product_id: plant9.id,
    plant_db_id: 9,
    name: "Sansevieria Laurentii",
    inches: 10,
    price: 55,
    plant_type: "test",
    size: "medium",
    light: "low",
    care_level: "beginners",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 36-48 inches tall",
    lighting: "Low light, indirect",
    care: "Easy",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    sansevieria_laurentii_main = File.open('app/assets/images/plants/sansevieria_laurentii/main.jpeg')
    sansevieria_laurentii.photomain.attach(io: sansevieria_laurentii_main, filename: 'main.jpeg')

    sansevieria_laurentii_hover = File.open('app/assets/images/plants/sansevieria_laurentii/hover.jpeg')
    sansevieria_laurentii.photohover.attach(io: sansevieria_laurentii_hover, filename: 'hover.jpeg')


calathea_medallion = Plant.create!(
    product_id: plant10.id,
    plant_db_id: 10,
    name: "Calathea Medallion",
    inches: 6,
    price: 30,
    plant_type: "test",
    size: "small",
    light: "medium",
    care_level: "experienced",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 12-24 inches tall",
    lighting: "Medium light, indirect",
    care: "Moderate",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    calathea_medallion_main = File.open('app/assets/images/plants/calathea_medallion/main.jpeg')
    calathea_medallion.photomain.attach(io: calathea_medallion_main, filename: 'main.jpeg')

    calathea_medallion_hover = File.open('app/assets/images/plants/calathea_medallion/hover.jpeg')
    calathea_medallion.photohover.attach(io: calathea_medallion_hover, filename: 'hover.jpeg')


ficus_audrey = Plant.create!(
    product_id: plant11.id,
    plant_db_id: 11,
    name: "Ficus Audrey",
    inches: 4,
    price: 14,
    plant_type: "test",
    size: "small",
    light: "high",
    care_level: "experienced",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 8-14 inches tall",
    lighting: "High light, a few hours of direct",
    care: "Moderate",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    ficus_audrey_main = File.open('app/assets/images/plants/ficus_audrey/main.jpeg')
    ficus_audrey.photomain.attach(io: ficus_audrey_main, filename: 'main.jpeg')

    ficus_audrey_hover = File.open('app/assets/images/plants/ficus_audrey/hover.jpeg')
    ficus_audrey.photohover.attach(io: ficus_audrey_hover, filename: 'hover.jpeg')


cereus_cactus = Plant.create!(
    product_id: plant12.id,
    plant_db_id: 12,
    name: "Cereus Cactus",
    inches: 10,
    price: 120,
    plant_type: "test",
    size: "medium",
    light: "high",
    care_level: "beginners",
    benefits: "air purifying",
    overview: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    height: "Stands 2.5-4 feet tall",
    lighting: "High light, few hours of direct",
    care: "Easy",
    lightreq: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    water: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    humidity: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non."
)

    cereus_cactus_main = File.open('app/assets/images/plants/cereus_cactus/main.jpeg')
    cereus_cactus.photomain.attach(io: cereus_cactus_main, filename: 'main.jpeg')

    cereus_cactus_hover = File.open('app/assets/images/plants/cereus_cactus/hover.jpeg')
    cereus_cactus.photohover.attach(io: cereus_cactus_hover, filename: 'hover.jpeg')





# ficus_audrey 4 * has care if search other ficus audrey
# monstera_deliciosa_small 4 * has care
# calathea_ornata 6 * has care DONE
# calathea_medallion 6 * has care
# monstera_deliciosa_large 10 ** 
# sansevieria_laurentii 10 ** 
# philodendron_hope_selloum 10 ** DONE
# cereus_cactus 10 ** 
# fiddle_leaf 14 *** 
# kentia_palm 14 *** DONE
# birds_of_paradise 14 *** 
# schefflera_amate 14 DONE


wythe30 = Planter.create!(
    product_id: planter1.id,
    name: "Wythe",
    planter_type: "test",
    price: 110,
    size: "medium",
    inches: 30,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    wythe30_main = open('https://root-directory-seed.s3.amazonaws.com/planters/wythe-30/main.jpeg')
    wythe30.photomain.attach(io: wythe30_main, filename: 'main.jpeg')

    wythe30_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/wythe-30/hover.jpeg')
    wythe30.photohover.attach(io: wythe30_hover, filename: 'hover.jpeg')

    wythe30_video = open('https://root-directory-seed.s3.amazonaws.com/planters/wythe-30/video.mp4')
    wythe30.video.attach(io: wythe30_video, filename: 'video.mp4')


wythe40 = Planter.create!(
    product_id: planter2.id,
    name: "Wythe",
    planter_type: "test",
    price: 150,
    size: "medium",
    inches: 40,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    wythe40_main = open('https://root-directory-seed.s3.amazonaws.com/planters/wythe-40/main.jpeg')
    wythe40.photomain.attach(io: wythe40_main, filename: 'main.jpeg')

    wythe40_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/wythe-40/hover.jpeg')
    wythe40.photohover.attach(io: wythe40_hover, filename: 'hover.jpeg')

    wythe40_video = open('https://root-directory-seed.s3.amazonaws.com/planters/wythe-40/video.mp4')
    wythe40.video.attach(io: wythe40_video, filename: 'video.mp4')


kent35 = Planter.create!(
    product_id: planter3.id,
    name: "Kent",
    planter_type: "test",
    price: 98,
    size: "medium",
    inches: 35,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    kent35_main = open('https://root-directory-seed.s3.amazonaws.com/planters/kent-35/main.jpeg')
    kent35.photomain.attach(io: kent35_main, filename: 'main.jpeg')

    kent35_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/kent-35/hover.jpeg')
    kent35.photohover.attach(io: kent35_hover, filename: 'hover.jpeg')

    kent35_video = open('https://root-directory-seed.s3.amazonaws.com/planters/kent-35/video.mp4')
    kent35.video.attach(io: kent35_video, filename: 'video.mp4')


kent48 = Planter.create!(
    product_id: planter4.id,
    name: "Kent",
    planter_type: "test",
    price: 145,
    size: "medium",
    inches: 48,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    kent48_main = open('https://root-directory-seed.s3.amazonaws.com/planters/kent-48/main.jpeg')
    kent48.photomain.attach(io: kent48_main, filename: 'main.jpeg')

    kent48_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/kent-48/hover.jpeg')
    kent48.photohover.attach(io: kent48_hover, filename: 'hover.jpeg')

    wythe30_video = open('https://root-directory-seed.s3.amazonaws.com/planters/kent-48/video.mp4')
    wythe30.video.attach(io: wythe30_video, filename: 'video.mp4')


calyer34 = Planter.create!(
    product_id: planter5.id,
    name: "Calyer",
    planter_type: "test",
    price: 125,
    size: "medium",
    inches: 34,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    calyer34_main = open('https://root-directory-seed.s3.amazonaws.com/planters/calyer-34/main.jpeg')
    calyer34.photomain.attach(io: calyer34_main, filename: 'main.jpeg')

    calyer34_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/calyer-34/hover.jpeg')
    calyer34.photohover.attach(io: calyer34_hover, filename: 'hover.jpeg')

    calyer34_video = open('https://root-directory-seed.s3.amazonaws.com/planters/calyer-34/video.mp4')
    calyer34.video.attach(io: calyer34_video, filename: 'video.mp4')


calyer46 = Planter.create!(
    product_id: planter6.id,
    name: "Calyer",
    planter_type: "test",
    price: 210,
    size: "medium",
    inches: 46,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    calyer46_main = open('https://root-directory-seed.s3.amazonaws.com/planters/calyer-46/main.jpeg')
    calyer46.photomain.attach(io: calyer46_main, filename: 'main.jpeg')

    calyer46_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/calyer-46/hover.jpeg')
    calyer46.photohover.attach(io: calyer46_hover, filename: 'hover.jpeg')

    calyer46_video = open('https://root-directory-seed.s3.amazonaws.com/planters/calyer-46/video.mp4')
    calyer46.video.attach(io: calyer46_video, filename: 'video.mp4')


newel30 = Planter.create!(
    product_id: planter7.id,
    name: "Newel",
    planter_type: "test",
    price: 89,
    size: "medium",
    inches: 30,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    newel30_main = open('https://root-directory-seed.s3.amazonaws.com/planters/newel-30/main.jpeg')
    newel30.photomain.attach(io: newel30_main, filename: 'main.jpeg')

    newel30_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/newel-30/hover.jpeg')
    newel30.photohover.attach(io: newel30_hover, filename: 'hover.jpeg')

    newel30_video = open('https://root-directory-seed.s3.amazonaws.com/planters/newel-30/video.mp4')
    newel30.video.attach(io: newel30_video, filename: 'video.mp4')


milton41 = Planter.create!(
    product_id: planter8.id,
    name: "Milton",
    planter_type: "test",
    price: 175,
    size: "medium",
    inches: 41,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    milton41_main = open('https://root-directory-seed.s3.amazonaws.com/planters/milton-41/main.jpeg')
    milton41.photomain.attach(io: milton41_main, filename: 'main.jpeg')

    milton41_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/milton-41/hover.jpeg')
    milton41.photohover.attach(io: milton41_hover, filename: 'hover.jpeg')

    milton41_video = open('https://root-directory-seed.s3.amazonaws.com/planters/milton-41/video.mp4')
    milton41.video.attach(io: milton41_video, filename: 'video.mp4')


sutton15 = Planter.create!(
    product_id: planter9.id,
    name: "Sutton",
    planter_type: "test",
    price: 45,
    size: "medium",
    inches: 15,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    sutton15_main = open('https://root-directory-seed.s3.amazonaws.com/planters/sutton-15/main.jpeg')
    sutton15.photomain.attach(io: sutton15_main, filename: 'main.jpeg')

    sutton15_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/sutton-15/hover.jpeg')
    sutton15.photohover.attach(io: sutton15_hover, filename: 'hover.jpeg')


ainslie17 = Planter.create!(
    product_id: planter10.id,
    name: "Ainslie",
    planter_type: "test",
    price: 50,
    size: "medium",
    inches: 17,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    ainslie17_main = open('https://root-directory-seed.s3.amazonaws.com/planters/ainslie-17/main.jpeg')
    ainslie17.photomain.attach(io: ainslie17_main, filename: 'main.jpeg')

    ainslie17_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/ainslie-17/hover.jpeg')
    ainslie17.photohover.attach(io: ainslie17_hover, filename: 'hover.jpeg')


varick20 = Planter.create!(
    product_id: planter11.id,
    name: "Varick",
    planter_type: "test",
    price: 45,
    size: "medium",
    inches: 20,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    varick20_main = open('https://root-directory-seed.s3.amazonaws.com/planters/varick-20/main.jpeg')
    varick20.photomain.attach(io: varick20_main, filename: 'main.jpeg')

    varick20_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/varick-20/hover.jpeg')
    varick20.photohover.attach(io: varick20_hover, filename: 'hover.jpeg')


franklin12 = Planter.create!(
    product_id: planter12.id,
    name: "Franklin",
    planter_type: "test",
    price: 29,
    size: "medium",
    inches: 12,
    color: "stone",
    material: "fiberstone",
    overview: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    dimensions: "these are dimensions"
)

    franklin12_main = open('https://root-directory-seed.s3.amazonaws.com/planters/franklin-12/main.jpeg')
    franklin12.photomain.attach(io: franklin12_main, filename: 'main.jpeg')

    franklin12_hover = open('https://root-directory-seed.s3.amazonaws.com/planters/franklin-12/hover.jpeg')
    franklin12.photohover.attach(io: franklin12_hover, filename: 'hover.jpeg')
