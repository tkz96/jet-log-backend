require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributed' do
      @user = User.new(name: 'testUser', email: 'testemail@mail.com', password: 'testpassword')
      expect(@user).to be_valid
    end

    it 'is not valid without a name' do
      @user = User.new(name: nil, email: 'testemail@mail.com', password: 'testpassword')
      expect(@user).to_not be_valid
    end

    it 'is not valid without an email' do
      @user = User.new(name: 'testUser', email: nil, password: 'testpassword')
      expect(@user).to_not be_valid
    end

    it 'is not valid without a password' do
      @user = User.new(name: 'testUser', email: 'testemail@mail.com', password: nil)
      expect(@user).to_not be_valid
    end
  end

  describe 'associations' do
    it 'has many reservations' do
      assc = described_class.reflect_on_association(:reservations)
      expect(assc.macro).to eq :has_many
    end
    it 'has many aeroplanes' do
      assc = described_class.reflect_on_association(:aeroplanes)
      expect(assc.macro).to eq :has_many
    end
  end
end
