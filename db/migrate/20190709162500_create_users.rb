class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :plant_care_rating
      t.string :avatar, :default => "https://en.wikipedia.org/wiki/Avatar_(computing)#/media/File:CandymyloveYasu.png"

      t.timestamps
    end
  end
end
