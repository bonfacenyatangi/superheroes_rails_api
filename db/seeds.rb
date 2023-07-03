# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing data
HeroPower.delete_all
Power.delete_all
Hero.delete_all

# Create Heroes
heroes = [
  { name: 'Kamala Khan', super_name: 'Ms. Marvel' },
  { name: 'Doreen Green', super_name: 'Squirrel Girl' },
  { name: 'Gwen Stacy', super_name: 'Spider-Gwen' }
]
heroes.each { |hero| Hero.create!(hero) }

# Create Powers
powers = [
  { name: 'Super Strength', description: 'Gives the wielder super-human strengths' },
  { name: 'Flight', description: 'Gives the wielder the ability to fly through the skies at supersonic speed' }
]
powers.each { |power| Power.create!(power) }

# Create HeroPowers
hero_powers = [
  { hero: Hero.first, power: Power.first, strength: 'Strong' },
  { hero: Hero.first, power: Power.last, strength: 'Average' },
  { hero: Hero.second, power: Power.first, strength: 'Weak' },
  { hero: Hero.third, power: Power.last, strength: 'Average' }
]
hero_powers.each { |hero_power| HeroPower.create!(hero_power) }

puts 'Seed data created successfully.'

