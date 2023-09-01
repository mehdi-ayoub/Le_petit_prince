require "open-uri"

puts "Cleaning database..."
User.destroy_all
Planet.destroy_all
Category.destroy_all

puts "Generating planet categories"

category_names = [
  "Terrestrial Planets",
  "Gas Giant Planets",
  "Dwarf Planets",
  "Exoplanets",
  "Planetary Moons",
  "Historical Planets",
  "Planetary Exploration",
  "Planetary Atmospheres",
  "Planetary Features",
  "Planet Formation"
]

hai = User.create(email: "hai@gmail.com", password: "hai@gmail.com", name: "hai dinh", last_name: "nguyen")

category_names.each do |name|
  Category.create(name: name)
end

puts "Generating planets"

# Planet.create(title: "Earth", description: "Habitable", renting_price: 123.5, image_url: "abc", category: Category.all.sample, user: hai)
# Planet.create(title: "Mars", description: "Unhabitable", renting_price: 23.5, image_url: "abcd", category: Category.all.sample, user: hai)

examples = {
  "Mercury" => "The smallest planet in our solar system.",
  "Venus" => "Known for its scorching hot surface and thick atmosphere.",
  "Earth" => "Our home planet with diverse ecosystems and abundant life.",
  "Mars" => "Often called the 'Red Planet', Mars has polar ice caps and ancient river valleys.",
  "Jupiter" => "The largest planet with its iconic Great Red Spot and numerous moons.",
  "Saturn" => "Famous for its stunning ring system and unique hexagonal storm at the north pole.",
  "Uranus" => "Tilted on its side, Uranus has a distinct blue-green color due to its atmosphere.",
  "Neptune" => "The farthest planet from the Sun, Neptune has a deep blue color",
  "Pluto" => "Once considered the ninth planet, Pluto is now classified as a dwarf planet.",
  "Eris" => "Another dwarf planet beyond Pluto, Eris is known for its highly elliptical orbit.",
  "Proxima Centauri b" => "An exoplanet in the habitable zone of the closest star to our Sun",
  "TRAPPIST-1e" => "A potentially habitable exoplanet in the TRAPPIST-1 system.",
}
examples.each do |title, description|
  planet = Planet.create!(
    title: title,
    description: description,
    spaceport: "16 Villa Gaudelet, Paris",
    renting_price: 50,
    image_url: "https://cdn.hswstatic.com/gif/mercury-update.jpg",
    # image_url: "https://solarsystem.nasa.gov/resources/439/mercurys-subtle-colors/?category=planets_mercury",
    category: Category.all.sample,
    user: hai,
    created_at: Time.now,
    updated_at: Time.now
  )

  # Mercury 1
  file = URI.open("https://solarsystem.nasa.gov/resources/439/mercurys-subtle-colors/?category=planets_mercury")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Mercury 1.2
  file = URI.open("https://solarsystem.nasa.gov/resources/771/colors-of-the-innermost-planet-view-1/?category=planets_mercury")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Mercury 1.3
  file = URI.open("https://solarsystem.nasa.gov/resources/443/mercurys-southern-hemisphere/?category=planets_mercury")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Mercury 1.4
  file = URI.open("https://solarsystem.nasa.gov/resources/772/the-impressive-rays-of-hokusai/?category=planets_mercury")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Mercury 1.5
  file = URI.open("https://solarsystem.nasa.gov/resources/525/surface-chemistry-maps/?category=planets_mercury")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save


  # Venus 2
  file = URI.open("https://solarsystem.nasa.gov/resources/775/venus-computer-simulated-global-view-of-the-northern-hemisphere/?category=planets_venus")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Venus 2.1
  file = URI.open("https://solarsystem.nasa.gov/resources/2524/newly-processed-views-of-venus-from-mariner-10/?category=planets_venus")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Venus 2.2
  file = URI.open("https://solarsystem.nasa.gov/resources/486/hemispheric-view-of-venus/?category=planets_venus")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Venus 2.3
  file = URI.open("https://solarsystem.nasa.gov/resources/480/venus-3d-perspective-view-of-maat-mons/?category=planets_venuss")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Venus 2.4
  file = URI.open("https://solarsystem.nasa.gov/resources/476/2012-venus-transit/?category=planets_venus")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Venus 2.5
  file = URI.open("https://solarsystem.nasa.gov/resources/775/venus-computer-simulated-global-view-of-the-northern-hemisphere/?category=planets_venus")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save


  # Earth 3
  file = URI.open("https://solarsystem.nasa.gov/resources/2332/as-the-world-turns/?category=planets_earth")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Earth 3.1
  file = URI.open("https://solarsystem.nasa.gov/resources/2334/apollo-10-view-of-the-earth/?category=planets_earth")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Earth 3.2
  file = URI.open("https://solarsystem.nasa.gov/resources/831/sea-ice-moves/?category=planets_earth")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Earth 3.3
  file = URI.open("https://solarsystem.nasa.gov/resources/2332/as-the-world-turns/?category=planets_earth")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Earth 3.4
  file = URI.open("https://solarsystem.nasa.gov/resources/2292/apollo-8s-iconic-earthrise/?category=planets_earth")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Earth 3.5
  file = URI.open("https://solarsystem.nasa.gov/resources/829/burning-planet/?category=planets_earth")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save


  # Mars 4
  file = URI.open("https://solarsystem.nasa.gov/resources/683/valles-marineris-the-grand-canyon-of-mars/?category=planets_mars")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Mars 4.1
  file = URI.open("https://solarsystem.nasa.gov/resources/2503/stair-stepped-hills/?category=planets_mars")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Mars 4.2
  file = URI.open("https://solarsystem.nasa.gov/resources/2510/ice-filled-crater/?category=planets_mars")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Mars 4.3
  file = URI.open("https://solarsystem.nasa.gov/resources/2429/sunset-on-mars-viking-1/?category=planets_mars")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Mars 4.4
  file = URI.open("https://solarsystem.nasa.gov/resources/2431/sunset-at-mars-gusev-crater-spirit/?category=planets_mars")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Mars 4.5
  file = URI.open("https://solarsystem.nasa.gov/resources/2491/layers-in-mars-danielson-crater/?category=planets_mars")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save


  # Jupiter 5
  file = URI.open("https://solarsystem.nasa.gov/resources/2486/hubbles-new-portrait-of-jupiter/?category=planets_jupiter")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Jupiter 5.1
  file = URI.open("https://solarsystem.nasa.gov/resources/2486/hubbles-new-portrait-of-jupiter/?category=planets_jupiter")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Jupiter 5.2
  file = URI.open("https://solarsystem.nasa.gov/resources/2486/hubbles-new-portrait-of-jupiter/?category=planets_jupiter")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Jupiter 5.3
  file = URI.open("https://solarsystem.nasa.gov/resources/2486/hubbles-new-portrait-of-jupiter/?category=planets_jupiter")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Jupiter 5.4
  file = URI.open("https://solarsystem.nasa.gov/resources/2486/hubbles-new-portrait-of-jupiter/?category=planets_jupiter")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save


  # Saturn 6
  file = URI.open("https://solarsystem.nasa.gov/resources/17845/saturn-planet-six/?category=planets_saturn")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Uranus 7
  file = URI.open("https://solarsystem.nasa.gov/resources/445/hubble-finds-many-bright-clouds-on-uranus/?category=planets_uranus")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Neptune 8
  file = URI.open("https://solarsystem.nasa.gov/resources/842/neptune-august-31-1989/?category=planets_neptune")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Pluto 9
  file = URI.open("https://solarsystem.nasa.gov/resources/699/pluto-dazzles-in-false-color/?category=planets/dwarf-planets_pluto")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Ceres 10
  file = URI.open("https://solarsystem.nasa.gov/resources/846/ceres-rotation-and-occator-crater/?category=planets/dwarf-planets_ceres")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Proxima Centauri b 11
  file = URI.open("https://upload.wikimedia.org/wikipedia/commons/8/81/Artist%E2%80%99s_impression_of_Proxima_Centauri_b_shown_hypothetically_as_an_arid_rocky_super-earth.jpg")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

  # Trappist-1e 12
  file = URI.open("https://upload.wikimedia.org/wikipedia/commons/3/38/TRAPPIST-1e_artist_impression_2018.png")
  planet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  planet.save

end
puts "Generating rentings"

Renting.create(user: hai, planet: Planet.first, start_date: Date.today, end_date: Date.today + 30)
Renting.create(user: hai, planet: Planet.last, start_date: Date.today, end_date: Date.today + 90)

puts "Finished generating planets"
