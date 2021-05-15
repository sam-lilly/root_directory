# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Plant.destroy_all
Planter.destroy_all


# Users

demoUser = User.create!(email: "plantlyfe@gmail.com", password: "password", first_name: "Forrest", last_name: "Willow" )


# Plants
# *** for care_level save info into a hash for ({care_level: "difficult", light_requirements: "lorem ipsum dolar", water_requirements: "lorem ipsum", humidity_preference: "lorem ipsum"})
# *** for overview save info into a hash for ({heigh: "stands 5-6 feet tall", light: "medium light, indirect", delivery: "local delivery in New York City area from $20+", sale: "Final Sale Only"})


monstera_deliciosa_large = Plant.create!(
    product_id: 1,
    plant_db_id: 1,
    name: "Monstera Deliciosa",
    inches: 10,
    price: 65,
    plant_type: "test",
    size: "medium",
    light: "medium",
    care_level: "beginners",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 2-3 feet tall",
        light: "Medium light, indirect",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Easy", 
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    monstera_deliciosa_large_main = File.open('app/assets/images/plants/monstera_deliciosa_large/main.jpeg')
    monstera_deliciosa_large.photomain.attach(io: monstera_deliciosa_large_main, filename: 'main.jpeg')

    monstera_deliciosa_large_hover = File.open('app/assets/images/plants/monstera_deliciosa_large/hover.jpeg')
    monstera_deliciosa_large.photohover.attach(io: monstera_deliciosa_large_hover, filename: 'hover.jpeg')


philodendron_hope = Plant.create!(
    product_id: 2,
    plant_db_id: 2,
    name: "Philodendron Hope Selloum",
    inches: 10,
    price: 65,
    plant_type: "test",
    size: "medium",
    light: "medium",
    care_level: "beginners",
    benefits: "air purifying",
    overview: {main: "don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 2-3 feet tall",
        light: "Medium light, indirect",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Easy",
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    philodendron_hope_main = File.open('app/assets/images/plants/philodendron_hope/main.jpeg')
    philodendron_hope.photomain.attach(io: philodendron_hope_main, filename: 'main.jpeg')

    philodendron_hope_hover = File.open('app/assets/images/plants/philodendron_hope/hover.jpeg')
    philodendron_hope.photohover.attach(io: philodendron_hope_hover, filename: 'hover.jpeg')


monstera_deliciosa_small = Plant.create!(
    product_id: 3,
    plant_db_id: 3,
    name: "Monstera Deliciosa",
    inches: 4,
    price: 14,
    plant_type: "test",
    size: "small",
    light: "medium",
    care_level: "beginners",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 8-14 inches tall",
        light: "Medium light, indirect",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Easy", 
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    monstera_deliciosa_small_main = File.open('app/assets/images/plants/monstera_deliciosa_small/main.jpeg')
    monstera_deliciosa_small.photomain.attach(io: monstera_deliciosa_small_main, filename: 'main.jpeg')

    monstera_deliciosa_small_hover = File.open('app/assets/images/plants/monstera_deliciosa_small/hover.jpeg')
    monstera_deliciosa_small.photohover.attach(io: monstera_deliciosa_small_hover, filename: 'hover.jpeg')
    

kentia_palm = Plant.create!(
    product_id: 4,
    plant_db_id: 4,
    name: "Kentia Palm",
    inches: 10,
    price: 600,
    plant_type: "test",
    size: "large",
    light: "medium",
    care_level: "beginners",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 5-6 feet tall",
        light: "Medium light, indirect",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Easy", 
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    kentia_palm_main = File.open('app/assets/images/plants/kentia_palm/main.jpeg')
    kentia_palm.photomain.attach(io: kentia_palm_main, filename: 'main.jpeg')

    kentia_palm_hover = File.open('app/assets/images/plants/kentia_palm/hover.jpeg')
    kentia_palm.photohover.attach(io: kentia_palm_hover, filename: 'hover.jpeg')
    

fiddle_leaf = Plant.create!(
    product_id: 5,
    plant_db_id: 5,
    name: "Fiddle Leaf Fig Tree",
    inches: 14,
    price: 600,
    plant_type: "test",
    size: "large",
    light: "high",
    care_level: "adept",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 5-6 feet tall",
        light: "High light, few hours of direct",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Difficult", 
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    fiddle_leaf_main = File.open('app/assets/images/plants/fiddle_leaf/main.jpeg')
    fiddle_leaf.photomain.attach(io: fiddle_leaf_main, filename: 'main.jpeg')

    fiddle_leaf_hover = File.open('app/assets/images/plants/fiddle_leaf/hover.jpeg')
    fiddle_leaf.photohover.attach(io: fiddle_leaf_hover, filename: 'hover.jpeg')
    

bird_of_paradise = Plant.create!(
    product_id: 6,
    plant_db_id: 6,
    name: "Bird of Paradise",
    inches: 14,
    price: 235,
    plant_type: "test",
    size: "large",
    light: "medium",
    care_level: "beginners",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 4.5-6.5 feet tall",
        light: "Medium light, indirect",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Easy", 
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    bird_of_paradise_main = File.open('app/assets/images/plants/bird_of_paradise/main.jpeg')
    bird_of_paradise.photomain.attach(io: bird_of_paradise_main, filename: 'main.jpeg')

    bird_of_paradise_hover = File.open('app/assets/images/plants/bird_of_paradise/hover.jpeg')
    bird_of_paradise.photohover.attach(io: bird_of_paradise_hover, filename: 'hover.jpeg')


schefflera_amate = Plant.create!(
    product_id: 7,
    plant_db_id: 7,
    name: "Schlefflera Amate",
    inches: 14,
    price: 195,
    plant_type: "test",
    size: "large",
    light: "medium",
    care_level: "experienced",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 5-7 feet tall",
        light: "Medium light, indirect",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Moderate",
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    schefflera_amate_main = File.open('app/assets/images/plants/schefflera_amate/main.jpeg')
    schefflera_amate.photomain.attach(io: schefflera_amate_main, filename: 'main.jpeg')

    schefflera_amate_hover = File.open('app/assets/images/plants/schefflera_amate/hover.jpeg')
    schefflera_amate.photohover.attach(io: schefflera_amate_hover, filename: 'hover.jpeg')


calathea_ornata = Plant.create!(
    product_id: 8,
    plant_db_id: 8,
    name: "Calathea Ornata",
    inches: 6,
    price: 25,
    plant_type: "test",
    size: "small",
    light: "medium",
    care_level: "experienced",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 12-14 inches tall",
        light: "Medium light, indirect",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Moderate",
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    calathea_ornata_main = File.open('app/assets/images/plants/calathea_ornata/main.jpeg')
    calathea_ornata.photomain.attach(io: calathea_ornata_main, filename: 'main.jpeg')

    calathea_ornata_hover = File.open('app/assets/images/plants/calathea_ornata/hover.jpeg')
    calathea_ornata.photohover.attach(io: calathea_ornata_hover, filename: 'hover.jpeg')


sansevieria_laurentii = Plant.create!(
    product_id: 9,
    plant_db_id: 9,
    name: "Sansevieria Laurentii",
    inches: 10,
    price: 55,
    plant_type: "test",
    size: "medium",
    light: "low",
    care_level: "beginners",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 36-48 inches tall",
        light: "Low light, indirect",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Easy", 
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    sansevieria_laurentii_main = File.open('app/assets/images/plants/sansevieria_laurentii/main.jpeg')
    sansevieria_laurentii.photomain.attach(io: sansevieria_laurentii_main, filename: 'main.jpeg')

    sansevieria_laurentii_hover = File.open('app/assets/images/plants/sansevieria_laurentii/hover.jpeg')
    sansevieria_laurentii.photohover.attach(io: sansevieria_laurentii_hover, filename: 'hover.jpeg')


calathea_medallion = Plant.create!(
    product_id: 10,
    plant_db_id: 10,
    name: "Calathea Medallion",
    inches: 6,
    price: 30,
    plant_type: "test",
    size: "small",
    light: "medium",
    care_level: "experienced",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 12-24 inches tall",
        light: "Medium light, indirect",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Moderate", 
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    calathea_medallion_main = File.open('app/assets/images/plants/calathea_medallion/main.jpeg')
    calathea_medallion.photomain.attach(io: calathea_medallion_main, filename: 'main.jpeg')

    calathea_medallion_hover = File.open('app/assets/images/plants/calathea_medallion/hover.jpeg')
    calathea_medallion.photohover.attach(io: calathea_medallion_hover, filename: 'hover.jpeg')


ficus_audrey = Plant.create!(
    product_id: 11,
    plant_db_id: 11,
    name: "Ficus Audrey",
    inches: 4,
    price: 14,
    plant_type: "test",
    size: "small",
    light: "high",
    care_level: "experienced",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 12-24 inches tall",
        light: "High light, a few hours of direct",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Moderate", 
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
)

    ficus_audrey_main = File.open('app/assets/images/plants/ficus_audrey/main.jpeg')
    ficus_audrey.photomain.attach(io: ficus_audrey_main, filename: 'main.jpeg')

    ficus_audrey_hover = File.open('app/assets/images/plants/ficus_audrey/hover.jpeg')
    ficus_audrey.photohover.attach(io: ficus_audrey_hover, filename: 'hover.jpeg')


cereus_cactus = Plant.create!(
    product_id: 12,
    plant_db_id: 12,
    name: "Cereus Cactus",
    inches: 10,
    price: 120,
    plant_type: "test",
    size: "medium",
    light: "high",
    care_level: "beginners",
    benefits: "air purifying",
    overview: {main: "Don't kill it, but also, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        height: "Stands 2.5-4 feet tall",
        light: "High light, few hours of direct",
        delivery: "Local delivery in New York City area from $20+",
        sale: "Final Sale Only"},
    care: {care_level: "Easy", 
        light_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        water_requirements: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
        humidity_preference: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim porta elit ut pellentesque. Nam auctor molestie arcu. Nulla sodales tempus aliquet. Phasellus vitae massa in enim facilisis cursus. Nullam vel eleifend libero. Nullam lobortis dui ut justo molestie, at interdum nisl vestibulum. Fusce nulla ante, maximus vitae sollicitudin quis, cursus ut tellus. Integer vel sapien augue. Sed quis ultricies urna. Nam semper dapibus odio, vitae cursus enim molestie in. Curabitur nec libero sit amet lacus commodo maximus eu a mauris. Praesent nunc felis, fermentum at dictum eget, venenatis vitae metus. Fusce hendrerit tellus est, at condimentum eros ultrices a. Nulla posuere varius odio, non convallis tellus elementum non.",
    }
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