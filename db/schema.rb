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

ActiveRecord::Schema.define(version: 2020_04_24_053730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "manurfacturers", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "toy_categories", force: :cascade do |t|
    t.bigint "toy_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_toy_categories_on_category_id"
    t.index ["toy_id"], name: "index_toy_categories_on_toy_id"
  end

  create_table "toys", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date_posted"
    t.string "posted_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "manurfacturer_id"
    t.index ["manurfacturer_id"], name: "index_toys_on_manurfacturer_id"
    t.index ["user_id"], name: "index_toys_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "toy_id"
    t.index ["toy_id"], name: "index_users_on_toy_id"
  end

  add_foreign_key "toy_categories", "categories"
  add_foreign_key "toy_categories", "toys"
  add_foreign_key "toys", "manurfacturers"
  add_foreign_key "toys", "users"
  add_foreign_key "users", "toys"
end
