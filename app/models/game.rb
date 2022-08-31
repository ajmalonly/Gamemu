class Game < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :game_name, presence: true
end
