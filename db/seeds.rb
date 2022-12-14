# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding..."
Aeroplane.destroy_all
Aeroplane.create(name:"A320neo", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:200, crew:20, description:"Looking to connect megacities while providing the latest comfort and technology aboard.", photo:"https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png")
Aeroplane.create(name:"A321XLR", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:180, crew:20, description:"Looking to connect megacities while providing the latest comfort and technology aboard.", photo:"https://www.noticiaslatamsales.com/files/cache/e4834b94e9433ef1de391379b556d05d_f36.png")
Aeroplane.create(name:"A220neo", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:100, crew:20, description:"Looking to connect megacities while providing the latest comfort and technology aboard.", photo:"https://www.ch-aviation.com/images/stockPhotos/4415/fb6ad9e35e92de94211dcae88d18c4912bff82f1.png")
Aeroplane.create(name:"A220-300", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:100, crew:20, description:"Looking to connect megacities while providing the latest comfort and technology aboard.", photo:"https://www.lufthansagroup.com/media/images/unternehmen/flotte/lufthansa/LH_A320neo_l.png")
Aeroplane.create(name:"A380", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:100, crew:20, description:"Looking to connect megacities while providing the latest comfort and technology aboard.", photo:"https://assets.stickpng.com/images/58ee8cd83545163ec1942cd1.png")