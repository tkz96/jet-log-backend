class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :aeroplanes, through: :reservations

  validates :name, presence: true
  # validates :email, presence: true, uniqueness: true
end
