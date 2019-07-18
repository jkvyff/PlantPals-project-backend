class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :user_id
      t.integer :temp_F
      t.integer :light
      t.integer :humidity
      t.boolean :pet_access

      t.timestamps
    end
  end
end
