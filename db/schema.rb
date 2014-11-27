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

ActiveRecord::Schema.define(version: 20141127051358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

end
