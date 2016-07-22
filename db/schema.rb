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

ActiveRecord::Schema.define(version: 20160721214751) do

  create_table "company_saveds", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "company"
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interviewreviews", force: :cascade do |t|
    t.string   "company"
    t.string   "experience"
    t.string   "length"
    t.string   "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "position_categories", force: :cascade do |t|
    t.string   "position"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "company"
    t.string   "headline"
    t.string   "pros"
    t.string   "cons"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sector_relations", force: :cascade do |t|
    t.string   "sector_name"
    t.string   "attire_category"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "user_infos", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "height"
    t.integer  "dress_size_form_number"
    t.integer  "shirt_size_form_number"
    t.integer  "pants_size"
    t.integer  "jean_waist_size"
    t.integer  "skirt_size"
    t.float    "shoe_size"
    t.string   "shirt_size_form_sml"
    t.string   "dress_size_form_sml"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
