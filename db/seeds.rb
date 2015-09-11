# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seed_files = Dir[Rails.root.join("lib/seed/shared/*.rb").to_s]
seed_files.each { |rb| require rb }

Seed::Shared::Countries.seed
Seed::Shared::States.seed
Seed::Shared::Restaurants.seed