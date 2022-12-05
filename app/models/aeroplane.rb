class Aeroplane < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :name, presence: true
  validates :make_year, presence: true
  validates :country_of_origin, presence: true
  validates :fuel_economy, presence: true
  validates :long_range_cruise_speed, presence: true
  validates :passenger_capacity, presence: true
  validates :crew, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
