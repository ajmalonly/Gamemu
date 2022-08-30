class User < ApplicationRecord
  has_many :games
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :games
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
