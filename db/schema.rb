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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111209221616) do

  create_table "languages", :force => true do |t|
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "natives", :force => true do |t|
    t.string   "nativelang"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phrases", :force => true do |t|
    t.string   "phrase"
    t.string   "tag"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phrases", ["phrase"], :name => "index_phrases_on_phrase"
  add_index "phrases", ["tag"], :name => "index_phrases_on_tag"
  add_index "phrases", ["user_id"], :name => "index_phrases_on_user_id"

  create_table "skills", :force => true do |t|
    t.string   "skill"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "translates", :force => true do |t|
    t.string   "translate"
    t.integer  "phrase_id"
    t.integer  "language_id"
    t.string   "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "translates", ["language_id"], :name => "index_translates_on_language_id"
  add_index "translates", ["phrase_id"], :name => "index_translates_on_phrase_id"
  add_index "translates", ["rating"], :name => "index_translates_on_rating"
  add_index "translates", ["translate"], :name => "index_translates_on_translate"

  create_table "translates_phrases", :id => false, :force => true do |t|
    t.integer  "phrase_id"
    t.integer  "translate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "translates_phrases", ["phrase_id", "translate_id"], :name => "index_translates_phrases_on_phrase_id_and_translate_id", :unique => true
  add_index "translates_phrases", ["phrase_id"], :name => "index_translates_phrases_on_phrase_id"
  add_index "translates_phrases", ["translate_id"], :name => "index_translates_phrases_on_translate_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "users_languages", :force => true do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_languages", ["language_id"], :name => "index_users_languages_on_language_id"
  add_index "users_languages", ["skill_id"], :name => "index_users_languages_on_skill_id"
  add_index "users_languages", ["user_id"], :name => "index_users_languages_on_user_id"

end
