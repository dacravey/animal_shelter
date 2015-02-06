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

ActiveRecord::Schema.define(version: 20150206194523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string   "animal_name"
    t.string   "gender"
    t.date     "date_of_admit"
    t.string   "animal_type"
    t.string   "breed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "animals", ["animal_name"], name: "index_animals_on_animal_name", using: :btree
  add_index "animals", ["animal_type"], name: "index_animals_on_animal_type", using: :btree
  add_index "animals", ["breed"], name: "index_animals_on_breed", using: :btree
  add_index "animals", ["date_of_admit"], name: "index_animals_on_date_of_admit", using: :btree
  add_index "animals", ["gender"], name: "index_animals_on_gender", using: :btree

  create_table "appointments", force: :cascade do |t|
    t.integer  "animal_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "appointment_id"
    t.date     "appointment_date"
    t.time     "appointment_time"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "type_preference"
    t.string   "breed_preference"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["breed_preference"], name: "index_customers_on_breed_preference", using: :btree
  add_index "customers", ["customer_name"], name: "index_customers_on_customer_name", using: :btree
  add_index "customers", ["type_preference"], name: "index_customers_on_type_preference", using: :btree

end
