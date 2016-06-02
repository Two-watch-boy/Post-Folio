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

ActiveRecord::Schema.define(version: 20160602002254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.string   "title"
    t.integer  "project_id"
  end

  add_index "photos", ["project_id"], name: "index_photos_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.string   "media"
    t.string   "date"
    t.string   "description"
    t.string   "thumbnail"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.string   "username"
    t.string   "phone"
    t.string   "email"
    t.string   "bio"
    t.string   "picture"
    t.string   "fb_link"
    t.string   "li_link"
    t.string   "password_digest"
    t.string   "avatar"
  end

  add_foreign_key "photos", "projects"
  add_foreign_key "projects", "users"
end
