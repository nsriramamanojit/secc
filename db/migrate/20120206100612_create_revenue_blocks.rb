class CreateRevenueBlocks < ActiveRecord::Migration
  def self.up
    create_table :revenue_blocks do |t|
      t.string  :name, :null=>false
      t.integer :state_id
      t.integer :division_id
      t.integer :district_id
      t.string  :description
      t.integer :reference_number
      t.string  :reference_name
      t.integer :user_count_flag, :default=>0
      t.boolean :status,:default=>1

      t.integer :created_by
      t.integer :modified_by


      t.timestamps
    end
  end

  def self.down
    drop_table :revenue_blocks
  end
end
