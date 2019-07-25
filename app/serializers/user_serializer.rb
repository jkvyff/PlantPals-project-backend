class UserSerializer < ActiveModel::Serializer
  has_many :rooms
  has_many :room_plants, through: :rooms
  attributes :id, :username, :plant_care_rating, :avatar
end