class CreateRoomPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :room_plants do |t|
      t.integer :room_id
      t.integer :plant_id
      t.string :nickname
      t.text :notes
      t.integer :watering_delay_days

      t.timestamps
    end
  end
end
