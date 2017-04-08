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

ActiveRecord::Schema.define(version: 20170408223003) do

  create_table "course_names", force: true do |t|
    t.string   "subject_course"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluations", force: true do |t|
    t.string   "term"
    t.string   "subject"
    t.integer  "enrollment"
    t.decimal  "item1_mean"
    t.decimal  "item2_mean"
    t.decimal  "item3_mean"
    t.decimal  "item4_mean"
    t.decimal  "item5_mean"
    t.decimal  "item6_mean"
    t.decimal  "item7_mean"
    t.decimal  "item8_mean"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "instructor_id"
    t.boolean  "is_test_data"
    t.decimal  "gpr"
    t.integer  "course"
    t.integer  "section"
    t.integer  "responses"
  end

  add_index "evaluations", ["instructor_id"], name: "index_evaluations_on_instructor_id"

  create_table "histories", force: true do |t|
    t.string   "term"
    t.string   "subject"
    t.string   "course"
    t.string   "section"
    t.string   "instructor"
    t.integer  "enrollment"
    t.string   "MSES"
    t.string   "DAE"
    t.string   "ANG"
    t.string   "DANG"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "extra_name"
    t.string   "status"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
