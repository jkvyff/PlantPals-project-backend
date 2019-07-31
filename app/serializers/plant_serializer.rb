class PlantSerializer < ActiveModel::Serializer
  has_many :room_plants
  has_many :rooms, through: :room_plants
  attributes :id, :common_name, :scientific_name, :temp_f, :temp_tolerance, :light_pref, :light_tolerance, :humidity_pref, :difficulty, :toxic
end
