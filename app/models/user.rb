class User < ApplicationRecord
  has_secure_password
  mount_uploader :avatar, AvatarUploader
  has_many :rooms, dependent: :destroy
  has_many :room_plants, through: :rooms
  validates :username, uniqueness: { case_sensitive: false }
  validates :username, :password_digest, :plant_care_rating, presence: true

end
