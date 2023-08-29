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
  Planet.create!(
    title: title,
    description: description,
    renting_price: 50,
    image_url: "",
    category: Category.all.sample,
    user: hai,
    created_at: Time.now,
    updated_at: Time.now
  )
end

puts "Finished generating planets"
