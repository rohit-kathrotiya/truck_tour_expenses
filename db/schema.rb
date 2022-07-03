# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_03_113754) do

  create_table "truck_fleets", force: :cascade do |t|
    t.string "plate_number"
    t.integer "fuel_price_per_liter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "truck_tours", force: :cascade do |t|
    t.string "name"
    t.integer "distance_in_kilometer"
    t.date "start_date"
    t.date "end_date"
    t.integer "truck_fleet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["truck_fleet_id"], name: "index_truck_tours_on_truck_fleet_id"
  end

  add_foreign_key "truck_tours", "truck_fleets"
end
