class RoomSerializer < ActiveModel::Serializer
  attributes :name, :user_id, :temp_F, :light, :humidity, :pet_access
end