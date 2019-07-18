class Plant < ApplicationRecord
	has_many :room_plants, dependent: :destroy
end
