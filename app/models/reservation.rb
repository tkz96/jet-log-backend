class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :aeroplane

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :city, presence: true
end
