# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_14_121929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coworkers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "lunch_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coworkers_dislikes", id: false, force: :cascade do |t|
    t.bigint "coworker_id"
    t.bigint "dislike_id"
    t.index ["coworker_id"], name: "index_coworkers_dislikes_on_coworker_id"
    t.index ["dislike_id"], name: "index_coworkers_dislikes_on_dislike_id"
  end

  create_table "coworkers_likes", id: false, force: :cascade do |t|
    t.bigint "coworker_id"
    t.bigint "like_id"
    t.index ["coworker_id"], name: "index_coworkers_likes_on_coworker_id"
    t.index ["like_id"], name: "index_coworkers_likes_on_like_id"
  end

  create_table "dislikes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "coworker_id"
    t.integer "friend_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
