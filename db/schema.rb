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

ActiveRecord::Schema.define(version: 20140912212753) do

  create_table "char_skills", force: true do |t|
    t.integer  "skill_id"
    t.integer  "char_id"
    t.integer  "skill_rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: true do |t|
    t.string   "char_name"
    t.integer  "user_id"
    t.integer  "char_age"
    t.integer  "char_str"
    t.integer  "char_dex"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "char_kno"
    t.integer  "char_mec"
    t.integer  "char_per"
    t.integer  "char_tec"
    t.text     "char_desc"
    t.text     "char_background"
  end

  create_table "skills", force: true do |t|
    t.string   "skill_name"
    t.string   "base_stat"
    t.string   "skill_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
