# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Location.destroy_all

locations = Location.create([
    { longitude: -58.049469, 
    latitude: -34.875961 , 
    name: 'New York, NY' },

    { longitude: -71.058884, 
    latitude: 42.360081 , 
    name: 'Boston, MA'  },

    { longitude: -122.419418, 
    latitude: 37.774929 , 
    name: 'San Francisco, CA'  }

])


