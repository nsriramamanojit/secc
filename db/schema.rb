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

ActiveRecord::Schema.define(:version => 20120428094722) do

  create_table "assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendances", :force => true do |t|
    t.integer  "revenue_block_id"
    t.date     "date"
    t.integer  "no_of_deo_attended",                       :default => 0
    t.string   "correction_deo_attended",                  :default => "0"
    t.integer  "no_of_deo_absent",                         :default => 0
    t.string   "correction_deo_absent",                    :default => "0"
    t.integer  "no_of_enu_attended",                       :default => 0
    t.string   "correction_enu_attended",                  :default => "0"
    t.integer  "no_of_enu_absent",                         :default => 0
    t.string   "correction_enu_absent",                    :default => "0"
    t.integer  "no_of_tpc",                                :default => 0
    t.string   "correction_no_of_tpc",                     :default => "0"
    t.integer  "no_of_supervisory",                        :default => 0
    t.string   "correction_no_of_supervisory",             :default => "0"
    t.integer  "no_of_ahc_completed",                      :default => 0
    t.string   "correction_no_of_ahc_completed",           :default => "0"
    t.integer  "no_of_citizens_completed",                 :default => 0
    t.string   "correction_no_of_citizens_completed",      :default => "0"
    t.integer  "cumulative_citizens",                      :default => 0
    t.string   "correction_cumulative_citizens",           :default => "0"
    t.integer  "no_of_eb_completed_enumerator",            :default => 0
    t.string   "correction_no_of_eb_completed_enumerator", :default => "0"
    t.integer  "no_of_eb_completed_system",                :default => 0
    t.string   "correction_no_of_eb_completed_system",     :default => "0"
    t.integer  "no_of_eb_nic_uploaded",                    :default => 0
    t.string   "correction_no_of_eb_nic_uploaded",         :default => "0"
    t.boolean  "status",                                   :default => false
    t.integer  "created_by"
    t.integer  "modified_by"
    t.date     "updated_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", :force => true do |t|
    t.string   "name",                               :null => false
    t.integer  "state_id"
    t.integer  "division_id"
    t.string   "description"
    t.integer  "reference_number"
    t.string   "reference_name"
    t.boolean  "status",           :default => true
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "divisions", :force => true do |t|
    t.string   "name",                               :null => false
    t.integer  "state_id"
    t.string   "description"
    t.integer  "reference_number"
    t.string   "reference_name"
    t.boolean  "status",           :default => true
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enumeration_blocks", :force => true do |t|
    t.string   "reference_number"
    t.string   "sub_enumeration_number"
    t.integer  "number_of_houses"
    t.integer  "number_of_citizens"
    t.integer  "state_id"
    t.integer  "division_id"
    t.integer  "district_id"
    t.integer  "revenue_block_id"
    t.integer  "panchayat_id"
    t.boolean  "status",                  :default => true
    t.string   "catalog_status",          :default => "NYS"
    t.string   "enumeration_status",      :default => "NYS"
    t.string   "enu_nic_upload_status",   :default => "NYS"
    t.string   "supervising_status",      :default => "NYS"
    t.string   "super_nic_upload_status", :default => "NYS"
    t.string   "draft_list_status",       :default => "NYS"
    t.string   "draft_list_edit_status",  :default => "NYS"
    t.string   "final_list_status",       :default => "NYS"
    t.boolean  "report_status",           :default => false
    t.text     "remarks"
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "panchayats", :force => true do |t|
    t.string   "name",                               :null => false
    t.string   "description"
    t.integer  "state_id"
    t.integer  "division_id"
    t.integer  "district_id"
    t.integer  "revenue_block_id"
    t.integer  "reference_number"
    t.string   "reference_name"
    t.boolean  "status",           :default => true
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "revenue_blocks", :force => true do |t|
    t.string   "name",                               :null => false
    t.integer  "state_id"
    t.integer  "division_id"
    t.integer  "district_id"
    t.string   "description"
    t.integer  "reference_number"
    t.string   "reference_name"
    t.integer  "user_count_flag",  :default => 0
    t.boolean  "status",           :default => true
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "short_name"
    t.boolean  "status",      :default => true
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name",                               :null => false
    t.string   "description"
    t.integer  "reference_number"
    t.string   "reference_name"
    t.boolean  "status",           :default => true
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uploads", :force => true do |t|
    t.integer  "revenue_block_id"
    t.date     "date"
    t.text     "dsr_description"
    t.string   "dsr_file_name"
    t.string   "dsr_content_type"
    t.integer  "dsr_file_size"
    t.datetime "dsr_updated_at"
    t.text     "der_description"
    t.string   "der_file_name"
    t.string   "der_content_type"
    t.integer  "der_file_size"
    t.datetime "der_updated_at"
    t.integer  "uploaded_by"
    t.integer  "approved_by"
    t.date     "approved_date"
    t.boolean  "status",           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_profiles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "state_id"
    t.integer  "division_id"
    t.integer  "district_id"
    t.integer  "revenue_block_id"
    t.string   "employee_number"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "name"
    t.string   "father_name"
    t.string   "gender"
    t.date     "dob"
    t.string   "address1"
    t.string   "address2"
    t.string   "place"
    t.string   "pin"
    t.string   "mobile_number"
    t.string   "phone_number"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token",                   :null => false
    t.string   "perishable_token",  :default => "",   :null => false
    t.integer  "login_count",       :default => 0,    :null => false
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
    t.boolean  "status",            :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "villages", :force => true do |t|
    t.string   "name"
    t.string   "reference_number"
    t.string   "description"
    t.integer  "state_id"
    t.integer  "division_id"
    t.integer  "district_id"
    t.integer  "revenue_block_id"
    t.integer  "panchayat_id"
    t.boolean  "status",           :default => true
    t.integer  "created_by"
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
