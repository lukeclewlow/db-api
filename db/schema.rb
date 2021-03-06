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

ActiveRecord::Schema.define(version: 20150331114525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subgenres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "genre_id"
  end

  add_index "subgenres", ["genre_id"], name: "index_subgenres_on_genre_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tunes", force: :cascade do |t|
    t.string   "artist"
    t.string   "title"
    t.string   "blog"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "genre_id"
  end

  add_index "tunes", ["genre_id"], name: "index_tunes_on_genre_id", using: :btree

  add_foreign_key "subgenres", "genres"
  add_foreign_key "tunes", "genres"
end
