require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before :all do
    @user = User.new(name: 'Amelia')
    @aeroplane = Aeroplane.create(name: 'A320neo',
                                  make_year: 1972,
                                  country_of_origin: 'USA',
                                  fuel_economy: nil,
                                  long_range_cruise_speed: 0.7,
                                  passenger_capacity: 200,
                                  crew: 20,
                                  description: 'Looking to connect megacities while providing the latest comfort and technology aboard.',
                                  photo: 'https://www.lufthansagroup.com/media/images/unternehmen/flotte/austrian-airlines/Austrian_A320_l.png')
    @reservation = Reservation.new(start_date: '2019-01-01', end_date: '2019-01-02', aeroplane_id: @aeroplane.id, city: 'Sydney')
  end

  context 'invalid parameters' do
    it 'checks the city is present' do
      subject.city = nil
      expect(subject).to_not be_valid
    end

    it 'checks the start date is present' do
      subject.start_date = nil
      expect(subject).to_not be_valid
    end
  end

  context 'valid parameters' do
    it 'checks the city is present' do
      expect(@reservation.city).to eq('Sydney')
    end
  end
end
