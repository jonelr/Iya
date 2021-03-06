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

ActiveRecord::Schema.define(:version => 20130305184504) do

  create_table "comments", :force => true do |t|
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "note_id"
  end

  create_table "contacts", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "phone"
    t.string   "owner"
  end

  create_table "doctor_visits", :force => true do |t|
    t.datetime "date"
    t.string   "for"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "owner"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.date     "event_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "owner"
  end

  create_table "feedings", :force => true do |t|
    t.date     "feeding_date"
    t.time     "feeding_time"
    t.string   "feeding_type"
    t.integer  "no_of_bottles"
    t.boolean  "swallows_heard"
    t.boolean  "spit"
    t.boolean  "wets"
    t.boolean  "poops"
    t.text     "comments"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.datetime "datetime"
    t.string   "owner"
  end

  create_table "lookups", :force => true do |t|
    t.string   "lookup_name"
    t.string   "lookup_key"
    t.string   "lookup_value"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "notes", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "owner"
  end

  create_table "todos", :force => true do |t|
    t.string   "title"
    t.datetime "duedate"
    t.string   "status"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vaccinations", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.string   "description"
    t.string   "vacination_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "owner"
  end

end
