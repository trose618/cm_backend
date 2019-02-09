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

ActiveRecord::Schema.define(version: 2019_02_09_204654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_one_id"
    t.bigint "user_two_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.float "client_level"
    t.string "client_name"
    t.string "lesson_focus"
    t.string "client_email"
    t.string "location"
    t.bigint "coach_id"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "lesson_date"
    t.bigint "client_age"
    t.boolean "accepted"
    t.boolean "checked"
  end

  create_table "messages", force: :cascade do |t|
    t.string "text"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "client"
    t.string "image_url", default: "https://moonvillageassociation.org/wp-content/uploads/2018/06/default-profile-picture1-744x744.jpg"
    t.string "bio", default: "Quisque purus tellus, eleifend elementum tortor congue, accumsan\n    vehicula metus. Praesent non sapien ut arcu aliquet varius at ac\n    nisi. Aliquam ut posuere metus, ac fringilla lectus. Interdum et\n    malesuada fames ac ante ipsum primis in faucibus. Integer\n    ullamcorper non lacus maximus viverra. Sed et faucibus orci. In\n    efficitur ante ac sapien lobortis, posuere tempor orci gravida."
  end

  add_foreign_key "messages", "conversations"
end
