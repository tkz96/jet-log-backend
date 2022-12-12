# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding..."
Aeroplane.destroy_all
Aeroplane.create(name:"A320neo", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:200, crew:20, description:"Looking to connect megacities while providing the latest comfort and technology aboard.", photo:"https://o.remove.bg/downloads/34cfb836-2e88-4ef6-a428-4104d226bd10/neo-removebg-preview.png")
Aeroplane.create(name:"A321XLR", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:180, crew:20, description:"Looking to connect megacities while providing the latest comfort and technology aboard.", photo:"https://o.remove.bg/downloads/53225e69-c645-48e2-b5fc-2607a77b1c76/Boeing-757-American-Airlines-Polished-removebg-preview.png")
Aeroplane.create(name:"A220neo", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:100, crew:20, description:"Looking to connect megacities while providing the latest comfort and technology aboard.", photo:"https://o.remove.bg/downloads/3d98541f-476d-423c-9a3d-028837441b0f/JetBlue-Airways-Airbus-A220-300-N3008J-scaled-removebg-preview.png")
Aeroplane.create(name:"A220-300", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:100, crew:20, description:"Looking to connect megacities while providing the latest comfort and technology aboard.", photo:"https://o.remove.bg/downloads/3e84faba-e238-45cf-b17b-ccf4cf1616a6/320-removebg-preview.png")
Aeroplane.create(name:"A380", make_year:1972, country_of_origin: "USA", fuel_economy:"A+", long_range_cruise_speed: 0.7, passenger_capacity:100, crew:20, description:"Looking to connect megacities while providing the latest comfort and technology aboard.", photo:"https://o.remove.bg/downloads/8ad918c7-783c-4b60-b56a-7f58a43633dc/380-removebg-preview.png")
puts "Seeding done"