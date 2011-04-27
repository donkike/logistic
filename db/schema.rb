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

ActiveRecord::Schema.define(:version => 20110423170310) do

  create_table "activities", :force => true do |t|
    t.text     "description"
    t.float    "time_activity"
    t.integer  "average_id"
    t.integer  "machine_id"
    t.integer  "main_activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assigned_main_activities", :force => true do |t|
    t.integer  "main_activity_id"
    t.integer  "garment_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "averages", :force => true do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machines", :force => true do |t|
    t.text     "description"
    t.string   "name"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main_activities", :force => true do |t|
    t.text     "description"
    t.float    "time_main_activity"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "assigned_main_activity_id"
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "vmodule_id"
    t.integer  "average_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vmodules", :force => true do |t|
    t.integer  "vmodule_number"
    t.float    "vmodule_efficiency"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
