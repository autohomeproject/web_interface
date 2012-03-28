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

ActiveRecord::Schema.define(:version => 20120328062324) do

  create_table "action_sets", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actions", :force => true do |t|
    t.integer  "device_id"
    t.integer  "action_set_id"
    t.float    "value"
    t.float    "duration"
    t.string   "json_data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "condition_sets", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conditions", :force => true do |t|
    t.integer  "device_id"
    t.integer  "condition_set_id"
    t.float    "value"
    t.integer  "comparison"
    t.string   "json_data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "device_permissions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "device_types", :force => true do |t|
    t.string   "name"
    t.string   "module_name"
    t.string   "data_type"
    t.string   "data_flow"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
    t.string   "name"
    t.integer  "device_type_id"
    t.integer  "location_id"
    t.boolean  "active"
    t.float    "default_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.integer  "room_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.integer  "floor"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rule_sets", :force => true do |t|
    t.string   "name"
    t.integer  "action_set_id"
    t.integer  "condition_set_id"
    t.integer  "user_id"
    t.string   "description"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "last_login"
    t.boolean  "administrator"
    t.string   "password_hash"
    t.string   "last_ip"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
