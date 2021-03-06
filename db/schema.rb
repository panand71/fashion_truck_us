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

ActiveRecord::Schema.define(version: 20150420201107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boutiques", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.string   "website"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "email"
    t.string   "city"
    t.string   "state"
    t.string   "schedule"
    t.string   "description"
    t.string   "category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "build_trucks", force: :cascade do |t|
    t.string   "project_name"
    t.integer  "owner_id"
    t.string   "size"
    t.string   "flooring"
    t.string   "walls"
    t.string   "lighting"
    t.string   "configuration"
    t.string   "shelves"
    t.string   "rods"
    t.string   "outside_color"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "birthday"
    t.string   "loyalty_number"
    t.string   "favorite_trucks"
    t.string   "favorite_fashion"
    t.integer  "boutique_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.string   "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
