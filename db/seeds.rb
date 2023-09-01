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

  # Planets and asteroids from The Little Prince
  "Asteroid B-612" => "The home of the Little Prince. It's a tiny planet with baobab trees and a rose.",
  "The King's Planet" => "Inhabited by a king who believes he rules the universe, even though his planet is very small.",
  "The Vain Man's Planet" => "Home to a man who desires nothing more than to be admired.",
  "The Drunkard's Planet" => "Houses a drunkard who drinks to forget the shame of drinking.",
  "The Lamplighter's Planet" => "Occupied by a lamplighter who lights and extinguishes a lamppost repeatedly.",
  "The Geographer's Planet" => "Inhabited by a geographer who has never explored his own planet.",
  "The Businessman's Planet" => "Home to a man who constantly counts the stars, claiming to own them.",
}

planet_images = {
  "Mercury" => "https://media.hswstatic.com/eyJidWNrZXQiOiJjb250ZW50Lmhzd3N0YXRpYy5jb20iLCJrZXkiOiJnaWZcL21lcmN1cnktdXBkYXRlLmpwZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6ODI4fSwidG9Gb3JtYXQiOiJhdmlmIn19",
  "Venus" => "https://cdn.britannica.com/27/210527-050-F8ED44B5/global-view-of-the-surface-of-Venus.jpg",
  "Earth" => "https://cdn.britannica.com/28/166428-050-FEDEDF8D/digital-image-Western-Hemisphere-Earth.jpg",
  "Mars" => "https://cdn.britannica.com/64/73464-050-56C80D3A/view-composite-images-Mars-spacecraft-Global-Surveyor-April-1999.jpg",
  "Jupiter" => "https://cdn.britannica.com/08/21208-050-D228E4D8/planets-planet-sun-Jupiter-one-Great-Red-1979.jpg",
  "Saturn" => "https://cdn.britannica.com/80/145480-050-24BF0658/image-Hubble-Space-Telescope-Saturn-moons-shadow.jpg",
  "Uranus" => "https://images.newscientist.com/wp-content/uploads/2021/09/17153915/PRI_200223094.jpg",
  "Neptune" => "https://listaka.com/wp-content/uploads/2021/02/Neptune-was-initially-called-Le-Verriers-Planet.jpg",
  "Pluto" => "https://cdn.mos.cms.futurecdn.net/DoZSMXF87kCuzbymsuEFHo-1200-80.jpg.webp",
  "Eris" => "https://cdn.britannica.com/85/183485-050-C93475CB/Pluto-spacecraft-New-Horizons-July-13-2015.jpg",
  "Proxima Centauri b" => "https://static.wikia.nocookie.net/thesolarsystem6361/images/4/49/1477462555_proxima-b.jpg",
  "TRAPPIST-1e" => "https://www.starrynighteducation.com/TRAPPIST-1/Media%20Assets/trappist_1_f.png",
  "Asteroid B-612" => "https://mcdn.wallpapersafari.com/medium/63/79/ZdivE0.jpg",
  "The King's Planet" => "https://m.media-amazon.com/images/I/411RVqyQeXL._AC_.jpg",
  "The Vain Man's Planet" => "https://images.squarespace-cdn.com/content/v1/5b681ecd3917eeea09becd4e/1544235735238-G1JE74GZZL7W92KZX5NJ/The%2BConceited%2BMan%2B2.png",
  "The Drunkard's Planet" => "https://images.squarespace-cdn.com/content/v1/5b681ecd3917eeea09becd4e/1590745949934-DFN0SDMY6H2QGVLUPGUG/Drunkard+AC+5+comp.jpg",
  "The Lamplighter's Planet" => "https://images.squarespace-cdn.com/content/v1/5b681ecd3917eeea09becd4e/1536744500454-11WGC6EZEGRK5QJE357Z/9-The+Lamplighter+3.JPG",
  "The Geographer's Planet" => "https://q3v5z9r8.rocketcdn.me/wp-content/uploads/2023/06/Geographer-the-little-prince-2-768x512.jpg",
  "The Businessman's Planet" => "https://images.squarespace-cdn.com/content/v1/5b681ecd3917eeea09becd4e/1536744069466-30WP9T7QN2HCQG1DTBFY/8-The+Business+Man+1+HD.jpg",
}

examples.each do |title, description|
  Planet.create!(
    title: title,
    description: description,
    spaceport: "16 Villa Gaudelet, Paris",
    renting_price: rand(100..500),
    image_url: planet_images[title] || "default_image_link.jpg",
    category: Category.all.sample,
    user: hai,
    created_at: Time.now,
    updated_at: Time.now
  )
end

puts "Generating rentings"

Renting.create(user: hai, planet: Planet.first, start_date: Date.today, end_date: Date.today + 30)
Renting.create(user: hai, planet: Planet.last, start_date: Date.today, end_date: Date.today + 90)

puts "Finished generating planets"
