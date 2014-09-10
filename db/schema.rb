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

ActiveRecord::Schema.define(version: 20140910204759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "topic_contents", force: true do |t|
    t.integer  "header_id"
    t.string   "content_header"
    t.integer  "location"
    t.boolean  "visibility"
    t.string   "content_type"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topic_contents", ["header_id"], name: "index_topic_contents_on_header_id", using: :btree

  create_table "topic_headers", force: true do |t|
    t.integer  "topic_id"
    t.string   "header"
    t.string   "lookup"
    t.integer  "location"
    t.boolean  "visibility"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topic_headers", ["lookup"], name: "index_topic_headers_on_lookup", using: :btree
  add_index "topic_headers", ["topic_id"], name: "index_topic_headers_on_topic_id", using: :btree

  create_table "topics", force: true do |t|
    t.string   "topic"
    t.integer  "location"
    t.boolean  "visibility"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100
    t.string   "username",        limit: 25
    t.string   "hashed_password", limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
