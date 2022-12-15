require 'rails_helper'

RSpec.describe 'Aeroplanes', type: :request do
  describe 'DELETE /destroy' do
    let!(:my_aeroplane) { FactoryBot.create(:aeroplane) }

    before do
      delete "/api/v1/aeroplanes/#{my_aeroplane.id}"
    end

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
