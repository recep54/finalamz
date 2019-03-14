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

ActiveRecord::Schema.define(version: 2019_03_04_105055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "influenceurs", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.float "follower"
    t.float "following"
    t.float "engagment"
    t.float "like"
    t.float "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "surl"
    t.string "title"
    t.string "price"
    t.string "asin"
    t.string "price_es"
    t.string "price_it"
    t.string "price_de"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
