# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb
kamala_khan = Hero.create(name: 'Kamala Khan', super_name: 'Ms. Marvel')
doreen_green = Hero.create(name: 'Doreen Green', super_name: 'Squirrel Girl')
gwen_stacy = Hero.create(name: 'Gwen Stacy', super_name: 'Spider-Gwen')

super_strength = Power.create(name: 'super strength', description: 'gives the wielder super-human strengths')
flight = Power.create(name: 'flight', description: 'gives the wielder the ability to fly through the skies at supersonic speed')

HeroPower.create(hero: kamala_khan, power: super_strength, strength: 'Strong')
HeroPower.create(hero: kamala_khan, power: flight, strength: 'Average')
