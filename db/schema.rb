# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_20_143627) do

  create_table "air_quality_measurements", force: :cascade do |t|
    t.integer "data_set_id", null: false
    t.datetime "measurement_datetime"
    t.integer "air_quality_parameter_id", null: false
    t.decimal "value"
    t.string "location"
    t.string "city"
    t.string "country"
    t.integer "radius"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "latitude"
    t.decimal "longitude"
    t.index ["air_quality_parameter_id"], name: "index_air_quality_measurements_on_air_quality_parameter_id"
    t.index ["data_set_id"], name: "index_air_quality_measurements_on_data_set_id"
  end

  create_table "air_quality_parameter_units", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "air_quality_parameters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "air_quality_parameter_unit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["air_quality_parameter_unit_id"], name: "index_air_quality_parameters_on_air_quality_parameter_unit_id"
  end

  create_table "data_set_sources", force: :cascade do |t|
    t.string "name"
    t.decimal "confidence_level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "data_sets", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "data_set_source_id", null: false
    t.decimal "confidence_level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["data_set_source_id"], name: "index_data_sets_on_data_set_source_id"
  end

  add_foreign_key "air_quality_measurements", "air_quality_parameters"
  add_foreign_key "air_quality_measurements", "data_sets"
  add_foreign_key "air_quality_parameters", "air_quality_parameter_units"
  add_foreign_key "data_sets", "data_set_sources"
end
