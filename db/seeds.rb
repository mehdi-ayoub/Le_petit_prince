puts "Cleaning database..."
Category.destroy_all
Planet.destroy_all

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


category_names.each do |name|
  Category.create(name: name)
end

puts "Generating planets"

fist_planet = Planet.create(title: "Earth", description: "Habitable", renting_price: 123.5, image_url: "abc" )
second_planet = Planet.create(title: "Mars", description: "Unhabitable", renting_price: 23.5, image_url: "abcd" )

puts "Finished generating planets"