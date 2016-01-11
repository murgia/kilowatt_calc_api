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

ActiveRecord::Schema.define(version: 20160111132836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appliances", force: :cascade do |t|
    t.string  "name"
    t.integer "power"
  end

  create_table "electcalcs", force: :cascade do |t|
    t.string "state"
    t.float  "avg_cost"
  end

  create_table "estimates", force: :cascade do |t|
    t.integer "appliance_id"
    t.integer "electcalc_id"
    t.integer "quantity"
  end

  add_index "estimates", ["appliance_id"], name: "index_estimates_on_appliance_id", using: :btree
  add_index "estimates", ["electcalc_id"], name: "index_estimates_on_electcalc_id", using: :btree

  add_foreign_key "estimates", "appliances"
  add_foreign_key "estimates", "electcalcs"
end
