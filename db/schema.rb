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

ActiveRecord::Schema.define(version: 20180827130424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accommodations", force: :cascade do |t|
    t.boolean "discounted_rates_available", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attractions", force: :cascade do |t|
    t.string "wait_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.bigint "neighborhood_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighborhood_id"], name: "index_events_on_neighborhood_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "attachment_file_name"
    t.integer "attachment_file_size"
    t.string "attachment_content_type"
    t.datetime "attachment_updated_at"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rsvp_invites", force: :cascade do |t|
    t.string "response"
    t.string "name"
    t.string "email"
    t.bigint "rsvp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rsvp_id"], name: "index_rsvp_invites_on_rsvp_id"
  end

  create_table "rsvps", force: :cascade do |t|
    t.bigint "event_id"
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_rsvps_on_event_id"
  end

  create_table "suggestions", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.bigint "neighborhood_id"
    t.float "latitude"
    t.float "longitude"
    t.text "url"
    t.text "description"
    t.string "price_range"
    t.string "phone"
    t.string "suggestable_type"
    t.bigint "suggestable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighborhood_id"], name: "index_suggestions_on_neighborhood_id"
    t.index ["suggestable_type", "suggestable_id"], name: "index_suggestions_on_suggestable_type_and_suggestable_id"
  end

  create_table "tags", force: :cascade do |t|
    t.bigint "suggestion_id"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suggestion_id"], name: "index_tags_on_suggestion_id"
  end

  add_foreign_key "events", "neighborhoods"
  add_foreign_key "rsvp_invites", "rsvps"
  add_foreign_key "rsvps", "events"
  add_foreign_key "suggestions", "neighborhoods"
  add_foreign_key "tags", "suggestions"
end
