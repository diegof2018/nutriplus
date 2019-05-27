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

ActiveRecord::Schema.define(version: 2019_05_08_005306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_categories", force: :cascade do |t|
    t.string "name"
    t.json "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_plannings", force: :cascade do |t|
    t.bigint "patient_id"
    t.datetime "date_start"
    t.datetime "date_finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.integer "status"
    t.text "days_week", default: ["f", "f", "f", "f", "f", "f", "f"], array: true
    t.index ["patient_id"], name: "index_food_plannings_on_patient_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "food_category_id"
    t.float "umidade"
    t.integer "energia_kc"
    t.integer "energia_kj"
    t.float "proteina"
    t.float "lipideos"
    t.integer "colesterol"
    t.float "carboidrato"
    t.float "fibra_alimentar"
    t.float "cinzas"
    t.float "calcio"
    t.float "magnesio"
    t.float "manganes"
    t.float "fosforo"
    t.float "ferro"
    t.integer "sodio"
    t.integer "potassio"
    t.float "cobre"
    t.float "zinco"
    t.integer "retinol"
    t.integer "re"
    t.integer "rae"
    t.float "tiamina"
    t.float "riboflavina"
    t.float "piridoxina"
    t.float "niacina"
    t.float "vitamina_c"
    t.index ["food_category_id"], name: "index_foods_on_food_category_id"
  end

  create_table "meals", force: :cascade do |t|
    t.bigint "type_meal_id"
    t.json "values"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "food_planning_id"
    t.time "hour"
    t.index ["food_planning_id"], name: "index_meals_on_food_planning_id"
    t.index ["type_meal_id"], name: "index_meals_on_type_meal_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_meals", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "food_plannings", "patients"
  add_foreign_key "foods", "food_categories"
  add_foreign_key "meals", "food_plannings"
  add_foreign_key "meals", "type_meals"
end
