class RoomSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :room_plants
  has_many :plants, through: :room_plants
  attributes :id, :name, :temp_F, :light, :humidity, :pet_access, :room_plants
end