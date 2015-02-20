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

ActiveRecord::Schema.define(version: 20150220140723) do

  create_table "authie_sessions", force: :cascade do |t|
    t.string   "token",              limit: 255
    t.string   "browser_id",         limit: 255
    t.integer  "user_id",            limit: 4
    t.boolean  "active",             limit: 1,     default: true
    t.text     "data",               limit: 65535
    t.datetime "expires_at"
    t.datetime "login_at"
    t.string   "login_ip",           limit: 255
    t.datetime "last_activity_at"
    t.string   "last_activity_ip",   limit: 255
    t.string   "last_activity_path", limit: 255
    t.string   "user_agent",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_type",          limit: 255
    t.integer  "parent_id",          limit: 4
  end

  add_index "authie_sessions", ["browser_id"], name: "index_authie_sessions_on_browser_id", using: :btree
  add_index "authie_sessions", ["token"], name: "index_authie_sessions_on_token", using: :btree
  add_index "authie_sessions", ["user_id"], name: "index_authie_sessions_on_user_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.string   "permalink",             limit: 255
    t.boolean  "has_physical_presence", limit: 1,   default: false
    t.string   "physical_address",      limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  create_table "service_locations", force: :cascade do |t|
    t.integer  "service_id",  limit: 4
    t.integer  "location_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "service_statuses", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "permalink",   limit: 255
    t.string   "color",       limit: 255
    t.string   "status_type", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "permalink",  limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "status_id",  limit: 4
  end

  create_table "sites", force: :cascade do |t|
    t.string "title",         limit: 255
    t.string "description",   limit: 255
    t.string "domain",        limit: 255
    t.string "support_email", limit: 255
    t.string "website_url",   limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email_address",   limit: 255
    t.string   "name",            limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end