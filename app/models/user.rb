class User < ApplicationRecord
  has_secure_password
  has_many :rooms, dependent: :destroy
  has_many :room_plants, through: :rooms
  validates :username, uniqueness: { case_sensitive: false }
  validates :username, :password, :plant_care_rating, presence: true

end
