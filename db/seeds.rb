# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Wok',
    address:      '7 Boundary St, Buenos aires E2 7JE',
    phone_number: '0381-123-123-456',
    category:     'chinese',
  },
  {
    name:         'Pizza East',
    address:      '251 Shoreditch High St, Buenos aires E1 6PQ',
    phone_number: '011-123-123-789',
    category:     'italian',
  },
  {
    name:         'Mc Donalds',
    address:      '314 Buenavista High St, buenos Aires E1 6PQ',
    phone_number: '011-123-123-333',
    category:     'belgian',
  },
  {
    name:         'Sushi One',
    address:      '281A Av. Avellaneda High St, Buenos aires E1 6PQ',
    phone_number: '011-123-123-444',
    category:     'japanese',
  },
  {
    name:         'Cocu',
    address:      '24B Shoreditch High St, Buenos aires E1 6PQ',
    phone_number: '011-123-123-123',
    category:     'french',
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
