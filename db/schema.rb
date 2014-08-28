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

ActiveRecord::Schema.define(version: 20140828173459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "mailing_address"
    t.string   "mailing_apt_no"
    t.string   "mailing_city"
    t.string   "mailing_state"
    t.integer  "mailing_zip"
    t.string   "living_address"
    t.string   "living_apt_no"
    t.string   "living_city"
    t.string   "living_state"
    t.integer  "living_zip"
    t.datetime "birthday"
    t.integer  "integer"
    t.hstore   "majors"
    t.integer  "gender"
    t.integer  "citizenship"
    t.integer  "race"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scholarships", force: true do |t|
    t.string   "name"
    t.hstore   "awards"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "sponsoring_company"
    t.text     "description"
    t.text     "instructions",        default: [], array: true
    t.hstore   "eligibility"
    t.integer  "sponsor_id"
    t.text     "all_applicants",      default: [], array: true
    t.text     "round1_applicants",   default: [], array: true
    t.text     "round2_applicants",   default: [], array: true
    t.hstore   "winners"
    t.datetime "round1_notification"
    t.datetime "round2_notification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
