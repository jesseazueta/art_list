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

ActiveRecord::Schema.define(version: 20160716232352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string   "client"
    t.string   "job_type"
    t.text     "description"
    t.integer  "price_in_cents"
    t.string   "file"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "completed",      default: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_reviews_on_project_id", using: :btree
  end

  add_foreign_key "reviews", "projects"
end
