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

ActiveRecord::Schema.define(version: 20180723120254) do

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.string "content"
    t.integer "id_in_product"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.index ["product_id"], name: "index_comments_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "about"
    t.string "need_people"
    t.string "goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
