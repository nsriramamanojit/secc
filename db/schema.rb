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

ActiveRecord::Schema.define(:version => 20120206100612) do

  create_table "districts", :force => true do |t|
    t.string   "name",             :null => false
    t.integer  "state_id"
    t.integer  "division_id"
    t.string   "description"
    t.integer  "reference_number"
    t.string   "reference_name"
    t.boolean  "status"
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "divisions", :force => true do |t|
    t.string   "name",             :null => false
    t.integer  "state_id"
    t.string   "description"
    t.integer  "reference_number"
    t.string   "reference_name"
    t.boolean  "status"
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "revenue_blocks", :force => true do |t|
    t.string   "name",             :null => false
    t.integer  "state_id"
    t.integer  "division_id"
    t.integer  "district_id"
    t.string   "description"
    t.integer  "reference_number"
    t.string   "reference_name"
    t.boolean  "status"
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name",             :null => false
    t.string   "description"
    t.integer  "reference_number"
    t.string   "reference_name"
    t.boolean  "status"
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
