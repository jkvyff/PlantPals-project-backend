class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :common_name
      t.string :scientific_name
      t.integer :temp_f
      t.integer :temp_tolerance
      t.integer :light_pref
      t.integer :light_tolerance
      t.integer :humidity_pref
      t.integer :difficulty
      t.boolean :toxic

      t.timestamps
    end
  end
end
