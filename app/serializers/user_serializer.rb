class UserSerializer < ActiveModel::Serializer
  attributes :username, :plant_care_rating, :avatar
end