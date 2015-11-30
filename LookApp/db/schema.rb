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

ActiveRecord::Schema.define(version: 20151130223401) do

  create_table "apps", force: :cascade do |t|
    t.string   "appID"
    t.string   "name"
    t.string   "developer"
    t.string   "platform"
    t.string   "version"
    t.string   "price"
    t.string   "link"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "ImageURL",    limit: 255
    t.string   "Description"
    t.boolean  "featured"
    t.boolean  "new"
    t.boolean  "suggested"
  end

  create_table "chest", id: false, force: :cascade do |t|
    t.string "imageURL"
    t.string "name"
    t.string "version"
    t.string "price"
  end

  create_table "ratings", force: :cascade do |t|
    t.string   "commenter"
    t.text     "comment"
    t.integer  "app_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ratings", ["app_id"], name: "index_ratings_on_app_id"

  create_table "users", id: false, force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

end
