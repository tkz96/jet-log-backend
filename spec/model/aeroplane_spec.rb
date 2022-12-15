require 'rails_helper'

# RSpec.describe Aeroplane, type: :model do
#   describe 'Validations' do
#     it 'is valid with valid attributes' do
#       aeroplane = Aeroplane.create(name: 'A320neo',
#                                    make_year: 1972,
#                                    country_of_origin: 'USA',
#                                    fuel_economy: 'A+',
#                                    long_range_cruise_speed: 0.7,
#                                    passenger_capacity: 200,
#                                    crew: 20,
#                                    description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
#                                    photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
#       expect(aeroplane).to be_valid
#     end
#     it 'is not valid without a name' do
#       aeroplane = Aeroplane.create(name: nil,
#                                    make_year: 1972,
#                                    country_of_origin: 'USA',
#                                    fuel_economy: 'A+',
#                                    long_range_cruise_speed: 0.7,
#                                    passenger_capacity: 200,
#                                    crew: 20,
#                                    description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
#                                    photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
#       expect(aeroplane).to_not be_valid
#     end
#     it 'is not valid without a make_year' do
#       aeroplane = Aeroplane.create(name: 'A320neo',
#                                    make_year: nil,
#                                    country_of_origin: 'USA',
#                                    fuel_economy: 'A+',
#                                    long_range_cruise_speed: 0.7,
#                                    passenger_capacity: 200,
#                                    crew: 20,
#                                    description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
#                                    photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
#       expect(aeroplane).to_not be_valid
#     end
#     it 'is not valid without a country_of_origin' do
#       aeroplane = Aeroplane.create(name: 'A320neo',
#                                    make_year: 1972,
#                                    country_of_origin: nil,
#                                    fuel_economy: 'A+',
#                                    long_range_cruise_speed: 0.7,
#                                    passenger_capacity: 200,
#                                    crew: 20,
#                                    description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
#                                    photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
#       expect(aeroplane).to_not be_valid
#     end
#     it 'is not valid without a fuel_economy' do
#       aeroplane = Aeroplane.create(name: 'A320neo',
#                                    make_year: 1972,
#                                    country_of_origin: 'USA',
#                                    fuel_economy: nil,
#                                    long_range_cruise_speed: 0.7,
#                                    passenger_capacity: 200,
#                                    crew: 20,
#                                    description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
#                                    photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
#       expect(aeroplane).to_not be_valid
#     end
#     it 'is not valid without a long_range_cruise_speed' do
#       aeroplane = Aeroplane.create(name: 'A320neo',
#                                    make_year: 1972,
#                                    country_of_origin: 'USA',
#                                    fuel_economy: nil,
#                                    long_range_cruise_speed: 0.7,
#                                    passenger_capacity: 200,
#                                    crew: 20,
#                                    description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
#                                    photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
#       expect(aeroplane).to_not be_valid
#     end
#     it 'is not valid without a passenger_capacity' do
#       aeroplane = Aeroplane.create(name: 'A320neo',
#                                    make_year: 1972,
#                                    country_of_origin: 'USA',
#                                    fuel_economy: nil,
#                                    long_range_cruise_speed: 0.7,
#                                    passenger_capacity: 200,
#                                    crew: 20,
#                                    description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
#                                    photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
#       expect(aeroplane).to_not be_valid
#     end
#     it 'is not valid without a crew' do
#       aeroplane = Aeroplane.create(name: 'A320neo',
#                                    make_year: 1972,
#                                    country_of_origin: 'USA',
#                                    fuel_economy: nil,
#                                    long_range_cruise_speed: 0.7,
#                                    passenger_capacity: 200,
#                                    crew: 20,
#                                    description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
#                                    photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
#       expect(aeroplane).to_not be_valid
#     end
#     it 'is not valid without a description' do
#       aeroplane = Aeroplane.create(name: 'A320neo',
#                                    make_year: 1972,
#                                    country_of_origin: 'USA',
#                                    fuel_economy: nil,
#                                    long_range_cruise_speed: 0.7,
#                                    passenger_capacity: 200,
#                                    crew: 20,
#                                    description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
#                                    photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
#       expect(aeroplane).to_not be_valid
#     end
#     it 'is not valid without a photo' do
#       aeroplane = Aeroplane.create(name: 'A320neo',
#                                    make_year: 1972,
#                                    country_of_origin: 'USA',
#                                    fuel_economy: nil,
#                                    long_range_cruise_speed: 0.7,
#                                    passenger_capacity: 200,
#                                    crew: 20,
#                                    description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
#                                    photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
#       expect(aeroplane).to_not be_valid
#     end
#   end
#   describe 'Associations' do
#     it 'has many reservations' do
#       assc = described_class.reflect_on_association(:reservations)
#       expect(assc.macro).to eq :has_many
#     end
#   end
# end

RSpec.describe Aeroplane, type: :model do
  let!(:my_aeroplane) { FactoryBot.create(:aeroplane) }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(my_aeroplane).to be_valid
    end
    it 'is not valid without a name' do
      my_aeroplane.name = nil
      expect(my_aeroplane).to_not be_valid
    end
    it 'is not valid without a make_year' do
      my_aeroplane.make_year = nil
      expect(my_aeroplane).to_not be_valid
    end
    it 'is not valid without a country_of_origin' do
      my_aeroplane.country_of_origin = nil
      expect(my_aeroplane).to_not be_valid
    end
    it 'is not valid without a fuel_economy' do
      my_aeroplane.fuel_economy = nil
      expect(my_aeroplane).to_not be_valid
    end
    it 'is not valid without a long_range_cruise_speed' do
      my_aeroplane.long_range_cruise_speed = nil
      expect(my_aeroplane).to_not be_valid
    end
    it 'is not valid without a passenger_capacity' do
      my_aeroplane.passenger_capacity = nil
      expect(my_aeroplane).to_not be_valid
    end
    it 'is not valid without a crew' do
      my_aeroplane.crew = nil
      expect(my_aeroplane).to_not be_valid
    end
    it 'is not valid without a description' do
      my_aeroplane.description = nil
      expect(my_aeroplane).to_not be_valid
    end
    it 'is not valid without a photo' do
      my_aeroplane.photo = nil
      expect(my_aeroplane).to_not be_valid
    end
  end
  describe 'Associations' do
    it 'has many reservations' do
      assc = described_class.reflect_on_association(:reservations)
      expect(assc.macro).to eq :has_many
    end
  end
end
