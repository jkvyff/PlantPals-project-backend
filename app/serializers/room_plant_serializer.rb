class RoomPlantSerializer < ActiveModel::Serializer
  belongs_to :room
  belongs_to :plant
  attributes :id, :nickname, :notes, :watering_delay_days, :plant
end
