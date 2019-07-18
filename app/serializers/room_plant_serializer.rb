class RoomPlantSerializer < ActiveModel::Serializer
  attributes :room_id, :plant_id, :nickname, :notes, :watering_delay_days
end