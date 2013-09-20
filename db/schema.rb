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

ActiveRecord::Schema.define(version: 20130920165030) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_courses", force: true do |t|
    t.integer "category_id"
    t.integer "course_id"
  end

  add_index "categories_courses", ["category_id", "course_id"], name: "index_categories_courses_on_category_id_and_course_id"

  create_table "categorisations", force: true do |t|
    t.integer  "category_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorisations", ["category_id", "course_id"], name: "index_categorisations_on_category_id_and_course_id"

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "short_title"
    t.integer  "duration"
    t.decimal  "cost_per_day"
    t.text     "summary"
    t.boolean  "published",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_textbooks", force: true do |t|
    t.integer "textbook_id"
    t.integer "course_id"
  end

  add_index "courses_textbooks", ["textbook_id", "course_id"], name: "index_courses_textbooks_on_textbook_id_and_course_id"

  create_table "objectives", force: true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "objectives", ["course_id"], name: "index_objectives_on_course_id"

  create_table "textbooks", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
