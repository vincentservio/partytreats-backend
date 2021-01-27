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

ActiveRecord::Schema.define(version: 2021_01_26_085434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "event"
    t.text "pastry_id"
  end

  create_table "pastries", force: :cascade do |t|
    t.text "type_of"
    t.text "theme"
    t.text "color"
    t.text "size"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "customer_id"
  end

  create_table "samples", force: :cascade do |t|
    t.string "title"
    t.text "photo1"
    t.text "photo2"
    t.text "photo3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
