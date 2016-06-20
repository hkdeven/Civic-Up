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

ActiveRecord::Schema.define(version: 20160524004542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buckets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "body"
    t.integer  "upvotes"
    t.integer  "link_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "comments", ["link_id"], name: "index_comments_on_link_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "links", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "url"
    t.integer  "upvotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "links", ["user_id"], name: "index_links_on_user_id", using: :btree

  create_table "shots", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "width"
    t.string   "height"
    t.string   "tags"
    t.string   "image_url"
    t.string   "image_path"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "viewcount"
    t.integer  "likes_count"
    t.integer  "comments_count"
    t.integer  "attachments_count"
    t.integer  "rebounds_count"
    t.integer  "buckets_count"
    t.string   "localshotimage_file_name"
    t.string   "localshotimage_content_type"
    t.string   "localshotimage_file_size"
    t.string   "localshotimage_updated_at"
    t.integer  "dribbble_id"
    t.string   "html_url"
    t.string   "attachments_url"
    t.string   "buckets_url"
    t.string   "comments_url"
    t.string   "likes_url"
    t.string   "projects_url"
    t.boolean  "animated"
    t.string   "user_name"
    t.string   "user_username"
    t.string   "user_html_url"
    t.string   "user_avatar_url"
    t.string   "user_bio"
    t.string   "user_location"
    t.integer  "comments_received_count"
    t.integer  "followers_count"
    t.integer  "followings_count"
    t.integer  "likes_received_count"
    t.integer  "projects_count"
    t.integer  "rebounds_received_count"
    t.integer  "shots_count"
    t.integer  "teams_count"
    t.boolean  "can_upload_shot"
    t.string   "dribbble_type"
    t.boolean  "pro"
    t.string   "followers_url"
    t.string   "following_url"
    t.string   "shots_url"
    t.string   "teams_url"
    t.string   "team"
    t.string   "images_hidpi"
    t.string   "images_normal"
    t.string   "images_teaser"
  end

  add_index "shots", ["user_id"], name: "index_shots_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "comments", "links"
  add_foreign_key "comments", "users"
  add_foreign_key "links", "users"
end
