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

ActiveRecord::Schema.define(version: 20170521213735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "check_list_item_users", force: :cascade do |t|
    t.integer  "checklist_item_id"
    t.integer  "user_id"
    t.boolean  "checked"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "check_list_items", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "event_type_check_list_items", force: :cascade do |t|
    t.integer  "event_type_id"
    t.integer  "checklistitem_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "event_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "event_type_id"
    t.integer  "user_id"
    t.integer  "guest_list_id"
    t.string   "location"
    t.datetime "date_time"
    t.integer  "budget"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "description"
  end

  create_table "guest_lists", force: :cascade do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invites", force: :cascade do |t|
    t.string   "user_email"
    t.string   "guest_email"
    t.boolean  "sent"
    t.integer  "user_id"
    t.string   "host"
    t.string   "location"
    t.text     "address"
    t.string   "city"
    t.datetime "event_date_time"
    t.text     "message"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "background_image"
    t.string   "title"
    t.string   "contact_email"
    t.string   "phone_number"
    t.string   "custom_font"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
