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

ActiveRecord::Schema.define(version: 2020_12_16_161450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "feature_upkeeps", force: :cascade do |t|
    t.bigint "feature_id", null: false
    t.bigint "upkeep_id", null: false
    t.date "last_done_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feature_id"], name: "index_feature_upkeeps_on_feature_id"
    t.index ["upkeep_id"], name: "index_feature_upkeeps_on_upkeep_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "upkeeps", force: :cascade do |t|
    t.string "task"
    t.string "task_internal"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_area_features", force: :cascade do |t|
    t.bigint "user_area_id", null: false
    t.bigint "feature_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feature_id"], name: "index_user_area_features_on_feature_id"
    t.index ["user_area_id"], name: "index_user_area_features_on_user_area_id"
  end

  create_table "user_areas", force: :cascade do |t|
    t.bigint "area_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "index_user_areas_on_area_id"
    t.index ["user_id"], name: "index_user_areas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "feature_upkeeps", "features"
  add_foreign_key "feature_upkeeps", "upkeeps"
  add_foreign_key "user_area_features", "features"
  add_foreign_key "user_area_features", "user_areas"
  add_foreign_key "user_areas", "areas"
  add_foreign_key "user_areas", "users"
end
