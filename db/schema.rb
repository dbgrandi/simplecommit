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

ActiveRecord::Schema.define(version: 20141005054827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collaborators", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "collaborators", ["project_id"], name: "index_collaborators_on_project_id", using: :btree
  add_index "collaborators", ["user_id"], name: "index_collaborators_on_user_id", using: :btree

  create_table "issues", force: true do |t|
    t.integer  "number"
    t.string   "state"
    t.string   "title"
    t.text     "body"
    t.datetime "opened_at"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "issues", ["project_id"], name: "index_issues_on_project_id", using: :btree

  create_table "labels", force: true do |t|
    t.string   "color"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "labels", ["project_id"], name: "index_labels_on_project_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "url"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "easy_label"
    t.string   "language"
  end

  create_table "taggings", force: true do |t|
    t.integer  "issue_id"
    t.integer  "label_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["issue_id"], name: "index_taggings_on_issue_id", using: :btree
  add_index "taggings", ["label_id"], name: "index_taggings_on_label_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "access_token"
    t.string   "nickname"
    t.string   "image"
  end

end
