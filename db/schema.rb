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

ActiveRecord::Schema.define(:version => 20130224143539) do

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
  end

  create_table "doctor_visits", :force => true do |t|
    t.datetime "date"
    t.string   "for"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.date     "event_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
  end

  create_table "lookups", :force => true do |t|
    t.string   "lookup_name"
    t.string   "lookup_key"
    t.string   "lookup_value"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "vaccinations", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.string   "description"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "vacination_type"
  end

end
