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

ActiveRecord::Schema.define(version: 20180718074414) do

  create_table "activities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "registration_year"
    t.bigint "coordinator_id"
    t.bigint "student_id"
    t.string "status"
    t.bigint "examination_type_id"
    t.string "name"
    t.date "defense_date"
    t.string "comitee"
    t.string "result"
    t.string "mark"
    t.string "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinator_id"], name: "index_activities_on_coordinator_id"
    t.index ["examination_type_id"], name: "index_activities_on_examination_type_id"
    t.index ["student_id"], name: "index_activities_on_student_id"
  end

  create_table "coordinators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "firstname"
    t.string "lastname"
    t.date "birthdate"
    t.string "decree"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ordin"
    t.string "sgroup"
    t.string "email"
    t.string "tel"
    t.string "address"
    t.date "institut_date"
    t.string "cnp"
  end

  create_table "examination_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "firstname"
    t.string "lastname"
    t.date "matdate"
    t.string "thesis"
    t.string "payment"
    t.date "birthdate"
    t.integer "telephone"
    t.string "email"
    t.string "address"
    t.string "institution"
    t.string "occupation"
    t.bigint "coordinator_id"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinator_id"], name: "index_students_on_coordinator_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "coordinators"
  add_foreign_key "activities", "examination_types"
  add_foreign_key "activities", "students"
  add_foreign_key "students", "coordinators"
end
