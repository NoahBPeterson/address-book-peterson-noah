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

ActiveRecord::Schema.define(version: 2023_03_06_194303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street", null: false
    t.string "town", null: false
    t.string "zip_code", null: false
    t.string "state"
    t.string "country"
    t.bigint "person_id", null: false
    t.index ["person_id"], name: "index_addresses_on_person_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "email_address", null: false
    t.text "comment"
    t.bigint "person_id", null: false
    t.index ["person_id"], name: "index_emails_on_person_id"
  end

  create_table "person", force: :cascade do |t|
    t.string "salutation"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "middle_name"
    t.string "ssn"
    t.date "birthdate"
    t.text "comment"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_person_on_user_id"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string "phone_number", null: false
    t.text "comment"
    t.bigint "person_id", null: false
    t.index ["person_id"], name: "index_phone_numbers_on_person_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "person"
  add_foreign_key "emails", "person"
  add_foreign_key "person", "users"
  add_foreign_key "phone_numbers", "person"
end
