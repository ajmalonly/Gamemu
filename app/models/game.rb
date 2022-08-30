class Game < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :game_name, presence: true
end
