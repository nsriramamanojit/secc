class CreateEnumerationBlocks < ActiveRecord::Migration
  def self.up
    create_table :enumeration_blocks do |t|
      #t.string  :name, :null=>false
      #t.string  :reference_name
      #t.string  :description

      t.string :reference_number
      t.string :sub_enumeration_number

      t.integer :number_of_houses
      t.integer :number_of_citizens

      t.integer :state_id
      t.integer :division_id
      t.integer :district_id
      t.integer :revenue_block_id
      t.integer :panchayat_id

      t.boolean :status,:default=>1
      t.string  :catalog_status, :default=>"NYS"
      t.string  :enumeration_status, :default=>"NYS"
      t.string  :enu_nic_upload_status,:default=>"NYS"
      t.string  :supervising_status, :default=>"NYS"
      t.string  :super_nic_upload_status,:default=>"NYS"
      t.string  :draft_list_status, :default=>"NYS"
      t.string  :draft_list_edit_status,:default=>"NYS"
      t.string  :final_list_status,:default=>"NYS"

      t.boolean :report_status, :default=>0

      t.text    :remarks

      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :enumeration_blocks
  end
end
