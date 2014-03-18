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

ActiveRecord::Schema.define(:version => 20140318090229) do

  create_table "admin_users", :force => true do |t|
    t.string   "name",                :default => "", :null => false
    t.string   "encrypted_password",  :default => "", :null => false
    t.datetime "remember_created_at"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  add_index "admin_users", ["name"], :name => "index_admin_users_on_name", :unique => true

  create_table "applies", :force => true do |t|
    t.string  "student_id"
    t.integer "first"
    t.integer "second"
    t.integer "third"
  end

  create_table "information", :force => true do |t|
    t.string   "body",       :default => "",   :null => false
    t.datetime "posted_at",                    :null => false
    t.boolean  "enable",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "labolatories", :force => true do |t|
    t.string  "name"
    t.integer "yaku",  :default => 0
    t.integer "yakka", :default => 0
    t.integer "total", :default => 0
  end

  create_table "settings", :force => true do |t|
    t.string   "var",                      :null => false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "settings", ["thing_type", "thing_id", "var"], :name => "index_settings_on_thing_type_and_thing_id_and_var", :unique => true

  create_table "users", :force => true do |t|
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "name"
    t.string   "student_id"
    t.integer  "department"
    t.integer  "total"
    t.integer  "count"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.float    "average"
  end

  add_index "users", ["name"], :name => "index_users_on_name", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["student_id"], :name => "index_users_on_student_id", :unique => true

end
