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

ActiveRecord::Schema.define(version: 2020_06_08_041540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notification_students", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "notification_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["notification_id"], name: "index_notification_students_on_notification_id"
    t.index ["student_id"], name: "index_notification_students_on_student_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "occurrences", force: :cascade do |t|
    t.string "description"
    t.string "photo"
    t.bigint "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_occurrences_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "responsible_phone"
    t.string "responsible_name"
    t.date "birthday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "responsible_email"
    t.string "cpf"
    t.string "email"
    t.string "photo"
  end

end
