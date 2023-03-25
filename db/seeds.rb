# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding start"
# Create powers
 Power.create(name: 'Ice', description: 'The ability to control and create ice')
 Power.create(name: 'Fire', description: 'The ability to control and create fire')
 Power.create(name: 'Flight', description: 'The ability to fly')
Power.create(name: 'super strength',description: 'gives the wielder super-human strengths')
# Create heroes
 Hero.create(name: 'Clark Kent', super_name: 'Superman')
 Hero.create(name: 'Peter Parker', super_name: 'Spiderman')

  Hero.create(name: 'Bruce Wayne', super_name: 'Batman')
Hero.create(name: 'John Smith', super_name: 'Iceman')
Hero.create(name: 'Bruce Wilson', super_name: 'Dragon')

HeroPower.create(hero_id: 3, power_id:3, strength: "Weak")
HeroPower.create(hero_id: 1, power_id: 4, strength: "Strong")
HeroPower.create(hero_id: 4, power_id: 5, strength:"Average")
HeroPower.create(hero_id: 2, power_id:6, strength: "Strong")
HeroPower.create(hero_id: 6, power_id: 1, strength: "Average")
HeroPower.create(hero_id: 4, power_id: 2, strength: "Strong")