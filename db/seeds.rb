# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Location.destroy_all
Post.destroy_all

users = User.create([
    { first_name: 'Ayleen', 
    last_name: 'Nazario' , 
    username: 'Ayleen', 
    email: 'a@gmail.com' , 
    password: '1234' }
])


locations = Location.create([
    { longitude: -74.005974, 
    latitude: 40.712776 , 
    name: 'New York, NY' },

    { longitude: -71.058884, 
    latitude: 42.360081 , 
    name: 'Boston, MA'  },

    { longitude: -122.419418, 
    latitude: 37.774929 , 
    name: 'San Francisco, CA'  }
])

posts = Post.create([
    { title: "Testing New York", 
    content: "Mic check" , 
    user_id: 1, 
    location_id: 1 , 
    tone: "Analytical"},

    { title: "Testing Boston", 
    content: "Mic check" , 
    user_id: 1, 
    location_id: 2 , 
    tone: "Analytical" },

    { title: "Testing San Francisco", 
    content: "Mic check" , 
    user_id: 1, 
    location_id: 3 , 
    tone: "Analytical" }

])


