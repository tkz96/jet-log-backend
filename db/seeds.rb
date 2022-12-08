# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding..."
Aeroplane.destroy_all
Aeroplane.create(name:"A-320", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:100, crew:20, description:"Best plane ever!!!!!!!!!", photo:"https://en.wikipedia.org/wiki/Airbus_A320_family#/media/File:Vistara_VT-TTF_at_Bengaluru,_2016-02-20.jpg")
puts "Seeding done"