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

ActiveRecord::Schema.define(:version => 20131013023904) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "environments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inputs", :force => true do |t|
    t.string   "text"
    t.integer  "objectives_scenarios_map_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "inputs", ["objectives_scenarios_map_id"], :name => "index_inputs_on_objectives_scenarios_map_id"

  create_table "objectives", :force => true do |t|
    t.string   "name"
    t.integer  "environment_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "objectives", ["environment_id"], :name => "index_objectives_on_environment_id"
  add_index "objectives", ["name"], :name => "index_objectives_on_name"

  create_table "objectives_scenarios_maps", :force => true do |t|
    t.integer  "objective_id"
    t.integer  "scenario_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "objectives_scenarios_maps", ["objective_id"], :name => "index_objectives_scenarios_maps_on_objective_id"
  add_index "objectives_scenarios_maps", ["scenario_id"], :name => "index_objectives_scenarios_maps_on_scenario_id"

  create_table "scenarios", :force => true do |t|
    t.string   "name"
    t.integer  "environment_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "scenarios", ["environment_id"], :name => "index_scenarios_on_environment_id"
  add_index "scenarios", ["name"], :name => "index_scenarios_on_name"

end
