# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_18_180234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plants", force: :cascade do |t|
    t.string "common_name"
    t.string "scientific_name"
    t.integer "temp_f"
    t.integer "temp_tolerance"
    t.integer "light_pref"
    t.integer "light_tolerance"
    t.integer "humidity_pref"
    t.integer "difficulty"
    t.boolean "toxic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_plants", force: :cascade do |t|
    t.integer "room_id"
    t.integer "plant_id"
    t.string "nickname"
    t.text "notes"
    t.integer "watering_delay_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "temp_F"
    t.integer "light"
    t.integer "humidity"
    t.boolean "pet_access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "plant_care_rating"
    t.string "avatar", default: "CandymyloveYasu.png"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
