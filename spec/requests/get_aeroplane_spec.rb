require 'rails_helper'

RSpec.describe 'Aeroplanes', type: :request do
  describe 'GET /api/v1/aeroplanes' do
    before do
      FactoryBot.create_list(:aeroplane, 10)
      get '/api/v1/aeroplanes'
    end

    it 'returns all aeroplanes' do
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
