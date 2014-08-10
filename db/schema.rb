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

ActiveRecord::Schema.define(version: 20140808210958) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.text     "description"
    t.integer  "tailgate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hosts", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pics", force: true do |t|
    t.string   "image"
    t.integer  "tailgate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "latlng"
    t.string   "city"
    t.string   "state"
    t.string   "conference"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pcolor"
    t.string   "scolor"
  end

  create_table "tailgates", force: true do |t|
    t.string   "name"
    t.string   "latlng"
    t.string   "location"
    t.text     "description"
    t.string   "youtube"
    t.integer  "school_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
