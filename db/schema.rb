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

ActiveRecord::Schema.define(version: 20141127163401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authem_sessions", force: true do |t|
    t.string   "role",                    null: false
    t.integer  "subject_id",              null: false
    t.string   "subject_type",            null: false
    t.string   "token",        limit: 60, null: false
    t.datetime "expires_at",              null: false
    t.integer  "ttl",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authem_sessions", ["expires_at", "subject_type", "subject_id"], name: "index_authem_sessions_subject", using: :btree
  add_index "authem_sessions", ["expires_at", "token"], name: "index_authem_sessions_on_expires_at_and_token", unique: true, using: :btree

  create_table "lego_sets", force: true do |t|
    t.string   "name"
    t.string   "amazon_url",       limit: 1024
    t.string   "walmart_url",      limit: 1024
    t.string   "lego_url",         limit: 1024
    t.string   "price_in_stock"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "walmart_in_stock"
    t.boolean  "amazon_in_stock"
    t.boolean  "lego_in_stock"
    t.string   "tru_url",          limit: 1024
    t.boolean  "tru_in_stock"
    t.string   "target_url",       limit: 1024
    t.boolean  "target_in_stock"
    t.integer  "number"
  end

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "password_digest",                 null: false
    t.string   "password_reset_token", limit: 60, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
