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

ActiveRecord::Schema.define(version: 20150123120534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breakfast_orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "menu_content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "breakfast_orders", ["menu_content_id"], name: "index_breakfast_orders_on_menu_content_id", using: :btree
  add_index "breakfast_orders", ["user_id"], name: "index_breakfast_orders_on_user_id", using: :btree

  create_table "days", force: true do |t|
    t.string   "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dinner_orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "menu_content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dinner_orders", ["menu_content_id"], name: "index_dinner_orders_on_menu_content_id", using: :btree
  add_index "dinner_orders", ["user_id"], name: "index_dinner_orders_on_user_id", using: :btree

  create_table "foods", force: true do |t|
    t.text     "item"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lunch_orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "menu_content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lunch_orders", ["menu_content_id"], name: "index_lunch_orders_on_menu_content_id", using: :btree
  add_index "lunch_orders", ["user_id"], name: "index_lunch_orders_on_user_id", using: :btree

  create_table "menu_contents", force: true do |t|
    t.integer  "day_id"
    t.integer  "food_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "occasion"
  end

  add_index "menu_contents", ["day_id"], name: "index_menu_contents_on_day_id", using: :btree
  add_index "menu_contents", ["food_id"], name: "index_menu_contents_on_food_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "menu_content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["menu_content_id"], name: "index_orders_on_menu_content_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
