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

calathea_ornata = Plant.create!(
    product_id: 1,
    plant_db_id: 1,
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


schefflera_amate = Plant.create!(
    product_id: 3,
    plant_db_id: 3,
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
    



