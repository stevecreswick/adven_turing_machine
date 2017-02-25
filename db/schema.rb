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

ActiveRecord::Schema.define(version: 20170225182000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plot_devices", force: :cascade do |t|
    t.string   "title"
    t.string   "type_name"
    t.string   "message"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_plot_devices_on_user_id", using: :btree
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_stories_on_user_id", using: :btree
  end

  create_table "story_snippets", force: :cascade do |t|
    t.string   "title"
    t.string   "message"
    t.integer  "telling_id"
    t.integer  "plot_device_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "parent_snippet_id"
    t.index ["plot_device_id"], name: "index_story_snippets_on_plot_device_id", using: :btree
    t.index ["telling_id"], name: "index_story_snippets_on_telling_id", using: :btree
  end

  create_table "tellings", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "story_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "story_meter"
    t.integer  "game_over_snippet_id"
    t.index ["story_id"], name: "index_tellings_on_story_id", using: :btree
  end

  create_table "user_inputs", force: :cascade do |t|
    t.string  "skill_check"
    t.integer "check_value"
    t.integer "story_meter_effect"
    t.integer "success_snippet_id"
    t.integer "failure_snippet_id"
    t.string  "name"
    t.string  "message"
    t.integer "story_snippet_id"
    t.index ["story_snippet_id"], name: "index_user_inputs_on_story_snippet_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "biography"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "email"
    t.string   "auth_token"
  end

  add_foreign_key "plot_devices", "users"
  add_foreign_key "stories", "users"
  add_foreign_key "story_snippets", "plot_devices"
  add_foreign_key "story_snippets", "tellings"
  add_foreign_key "tellings", "stories"
  add_foreign_key "user_inputs", "story_snippets"
end
