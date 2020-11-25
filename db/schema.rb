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

ActiveRecord::Schema.define(version: 2020_11_25_072428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.bigint "request_id"
    t.string "title", null: false
    t.string "author", null: false
    t.string "publisher", null: false
    t.text "amazon_url"
    t.text "reason", null: false
    t.datetime "on_sale"
    t.string "cover"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["request_id"], name: "index_books_on_request_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "anagram", null: false
    t.string "name", null: false
    t.boolean "is_valid", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title", null: false
    t.string "author", null: false
    t.string "publisher", null: false
    t.text "amazon_url", null: false
    t.text "reason", null: false
    t.datetime "on_sale", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "department_id", null: false
    t.string "name", null: false
    t.integer "employee_id", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "is_valid", default: true, null: false
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "remember_digest"
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["employee_id"], name: "index_users_on_employee_id", unique: true
  end

  add_foreign_key "books", "requests"
  add_foreign_key "requests", "users"
  add_foreign_key "users", "departments"
end
