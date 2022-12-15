require 'rails_helper'

RSpec.describe 'Aeroplanes', type: :request do
  describe 'POST /create' do
    context 'with valid parameters' do
      let!(:my_aeroplane) { FactoryBot.create(:aeroplane) }

      before do
        post '/api/v1/aeroplanes', params: { aeroplane: { name: my_aeroplane.name, make_year: my_aeroplane.make_year, country_of_origin: my_aeroplane.country_of_origin, fuel_economy: my_aeroplane.fuel_economy, long_range_cruise_speed: my_aeroplane.long_range_cruise_speed, passenger_capacity: my_aeroplane.passenger_capacity, crew: my_aeroplane.crew, description: my_aeroplane.description, photo: my_aeroplane.photo } }
      end

      it 'return the name' do
        expect(json['name']).to eq(my_aeroplane.name)
      end

      it 'return the make_year' do
        expect(json['make_year']).to eq(my_aeroplane.make_year)
      end

      it 'return the country_of_origin' do
        expect(json['country_of_origin']).to eq(my_aeroplane.country_of_origin)
      end

      it 'return the fuel_economy' do
        expect(json['fuel_economy']).to eq(my_aeroplane.fuel_economy)
      end

      it 'return the long_range_cruise_speed' do
        expect(json['long_range_cruise_speed']).to eq(my_aeroplane.long_range_cruise_speed)
      end

      it 'return the passenger_capacity' do
        expect(json['passenger_capacity']).to eq(my_aeroplane.passenger_capacity)
      end

      it 'return the crew' do
        expect(json['crew']).to eq(my_aeroplane.crew)
      end

      it 'return the description' do
        expect(json['description']).to eq(my_aeroplane.description)
      end

      it 'return the photo' do
        expect(json['photo']).to eq(my_aeroplane.photo)
      end
    end

    context 'with invalid parameters' do
      before do
        post '/api/v1/aeroplanes', params: { aeroplane: { name: nil, make_year: nil, country_of_origin: nil, fuel_economy: nil, long_range_cruise_speed: nil, passenger_capacity: nil, crew: nil, description: nil, photo: nil } }
      end

      it 'returns unprocessable entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end