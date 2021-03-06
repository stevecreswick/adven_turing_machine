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

ActiveRecord::Schema.define(version: 20170920032825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "value"
    t.index ["story_id"], name: "index_likes_on_story_id", using: :btree
    t.index ["user_id"], name: "index_likes_on_user_id", using: :btree
  end

  create_table "plot_devices", force: :cascade do |t|
    t.string   "title"
    t.text     "message"
    t.string   "type_name"
    t.integer  "parent_device_id"
    t.integer  "story_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "value"
    t.index ["story_id"], name: "index_plot_devices_on_story_id", using: :btree
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_stories_on_user_id", using: :btree
  end

  create_table "user_inputs", force: :cascade do |t|
    t.string   "title"
    t.string   "message"
    t.string   "stat_check"
    t.integer  "pass_value"
    t.string   "success_message"
    t.integer  "success_id"
    t.string   "failure_message"
    t.integer  "failure_id"
    t.integer  "plot_device_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["plot_device_id"], name: "index_user_inputs_on_plot_device_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "email",           null: false
    t.string   "auth_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "profile_quote"
    t.string   "location"
    t.text     "about"
    t.string   "image_url"
  end

  add_foreign_key "likes", "stories"
  add_foreign_key "likes", "users"
  add_foreign_key "plot_devices", "stories"
  add_foreign_key "stories", "users"
  add_foreign_key "user_inputs", "plot_devices"
end
