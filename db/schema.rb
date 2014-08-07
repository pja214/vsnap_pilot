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

ActiveRecord::Schema.define(version: 20140807011207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pilot_metric"
  end

  create_table "employees", force: true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interactions", force: true do |t|
    t.boolean  "viewed"
    t.string   "url"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "week"
    t.integer  "week_id"
    t.string   "recipient"
    t.boolean  "response_sentiment"
    t.boolean  "response_other"
    t.boolean  "pilot_metric"
  end

  create_table "temps", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weeks", force: true do |t|
    t.integer  "number"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "employee_id"
  end

end
