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

ActiveRecord::Schema.define(version: 20180619105924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animations", force: :cascade do |t|
    t.string   "user_email"
    t.string   "path"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "image_count"
    t.integer  "progress"
    t.string   "name"
    t.integer  "unix_time"
    t.integer  "fps"
    t.string   "file_size"
    t.boolean  "is_public",   default: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "image"
  end

  create_table "wizards", force: :cascade do |t|
    t.string   "state"
    t.string   "email"
    t.boolean  "is_working"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "run_count"
    t.string   "email_tree"
    t.string   "mac"
  end

end
