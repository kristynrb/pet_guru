# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150721174036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cares", force: :cascade do |t|
    t.integer  "food_amount_dry"
    t.integer  "food_frequency_dry"
    t.integer  "food_amount_wet"
    t.integer  "food_frequency_wet"
    t.string   "treats"
    t.integer  "walk_frequency"
    t.integer  "walk_length"
    t.string   "walks_leash"
    t.string   "command_name"
    t.string   "command_description"
    t.string   "grooming"
    t.string   "special_needs"
    t.string   "fears"
    t.string   "additional_details"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "pet_id"
  end

  create_table "medicals", force: :cascade do |t|
    t.integer  "weight"
    t.integer  "height"
    t.string   "gender"
    t.string   "microchip_id"
    t.string   "pshots_date"
    t.string   "pshots_name"
    t.string   "ushots_date"
    t.string   "ushots_name"
    t.string   "allergies"
    t.string   "r_vet_name"
    t.string   "r_vet_doctor"
    t.string   "r_vet_address"
    t.string   "r_vet_address_city"
    t.string   "r_vet_address_state"
    t.string   "r_vet_zip"
    t.string   "r_vet_phone"
    t.string   "e_contact_name"
    t.string   "e_contact_phone"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "pet_id"
    t.string   "e_vet_name"
    t.string   "e_vet_address"
    t.string   "e_vet_address_city"
    t.string   "e_vet_address_state"
    t.string   "e_vet_address_zip"
    t.string   "e_vet_phone"
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "breed"
    t.string   "color"
    t.string   "birthday"
    t.string   "would_say"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "plays", force: :cascade do |t|
    t.string   "toy"
    t.string   "park"
    t.string   "games"
    t.string   "habits"
    t.string   "additional_details"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "pet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
