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

ActiveRecord::Schema.define(version: 20151001025544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "skills", force: :cascade do |t|
    t.string   "maincat"
    t.string   "subcat"
    t.string   "subsubcat"
    t.integer  "experience"
    t.boolean  "need"
    t.boolean  "offer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image_url"
    t.integer  "user_id"
  end

  add_index "skills", ["user_id"], name: "index_skills_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.float    "location_long"
    t.float    "location_lat"
    t.integer  "zipcode"
    t.string   "username"
    t.integer  "age"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "email"
    t.string   "image_url"
    t.text     "availability",     default: [],              array: true
  end

  create_table "vibes", force: :cascade do |t|
    t.string   "credit_code"
    t.text     "description"
    t.integer  "hours"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "wallets", force: :cascade do |t|
    t.integer  "balance"
    t.integer  "credit"
    t.integer  "debit"
    t.date     "last_used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
