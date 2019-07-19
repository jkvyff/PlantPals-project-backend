class QuerySerializer < ActiveModel::Serializer
  attributes :common_name, :scientific_name, :temp_f, :temp_tolerance, :light_pref, :light_tolerance, :humidity_pref, :difficulty, :toxic
end