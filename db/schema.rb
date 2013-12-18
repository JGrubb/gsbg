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

ActiveRecord::Schema.define(version: 20130922115319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", force: true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id", using: :btree
  add_index "line_items", ["product_id"], name: "index_line_items_on_product_id", using: :btree

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "press_items", force: true do |t|
    t.string   "pub"
    t.date     "date"
    t.string   "link"
    t.string   "quote"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "thumbnail"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",       precision: 8, scale: 2
    t.string   "colors",                              array: true
    t.string   "sizes",                               array: true
  end

  create_table "shows", force: true do |t|
    t.string   "venue"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.date     "date"
    t.text     "info"
    t.text     "info_link"
    t.text     "tickets_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country",      default: "USA"
    t.json     "geo"
    t.boolean  "deleted"
    t.boolean  "cancelled"
  end

  add_index "shows", ["date"], name: "index_shows_on_date", using: :btree
  add_index "shows", ["venue"], name: "index_shows_on_venue", using: :btree

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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
