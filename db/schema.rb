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

ActiveRecord::Schema.define(version: 20140108220652) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dispensaries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leafly_stores", force: true do |t|
    t.string   "slug"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "hours"
    t.string   "website"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "menu"
  end

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "store_id"
    t.string   "rating"
    t.string   "title"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "full_name"
    t.string   "display_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "avatar"
  end

end
