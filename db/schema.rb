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

ActiveRecord::Schema.define(version: 2019_07_25_212900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.string "party"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "date_time"
    t.string "title"
    t.string "url"
    t.string "author"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "poll_data_favorabilities", force: :cascade do |t|
    t.integer "poll_id"
    t.integer "candidate_id"
    t.integer "favorable"
    t.integer "unfavorable"
    t.integer "dont_know"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "poll_data_todays", force: :cascade do |t|
    t.integer "poll_id"
    t.integer "candidate_id"
    t.integer "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "poll_questions", force: :cascade do |t|
    t.string "question"
    t.string "pollster"
    t.string "end_date"
    t.string "start_date"
    t.integer "year"
    t.string "race"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
