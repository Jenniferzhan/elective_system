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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160829123529) do
=======
ActiveRecord::Schema.define(version: 20160823064600) do
>>>>>>> dec7d54... The system has finished
=======
ActiveRecord::Schema.define(version: 20160823064600) do
>>>>>>> dec7d54... The system has finished

  create_table "appointments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "course_title"
    t.string   "teacher"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "quantity",     default: 1
<<<<<<< HEAD
<<<<<<< HEAD
    t.integer  "teacher_id"
=======
>>>>>>> dec7d54... The system has finished
=======
>>>>>>> dec7d54... The system has finished
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "line_items", ["course_id"], name: "index_line_items_on_course_id"
  add_index "line_items", ["student_id"], name: "index_line_items_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "reset_digest"
    t.datetime "reset_set_at"
    t.string   "picture"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "email"
    t.string   "picture"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
