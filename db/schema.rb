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

ActiveRecord::Schema[7.0].define(version: 2022_04_28_231545) do
  create_table "events", force: :cascade do |t|
    t.string "event_name", null: false
    t.string "f1", null: false
    t.string "f2", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "f3", null: false
    t.string "f4", null: false
    t.string "status", null: false
    t.string "date", null: false
  end

  create_table "predictions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.string "fighter_guess", null: false
    t.string "method_guess", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "f1_fighter_actual", null: false
    t.string "f1_method_actual", null: false
    t.string "f2_fighter_actual", null: false
    t.string "f2_method_actual", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "correct_fg", default: 0
    t.integer "correct_mg", default: 0
    t.integer "incorrect_fg", default: 0
    t.integer "incorrect_mg", default: 0
  end

end
