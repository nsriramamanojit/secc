class CreateEnumerationBlocks < ActiveRecord::Migration
  def self.up
    create_table :enumeration_blocks do |t|
      t.string  :name, :null=>false
      t.string  :description
      t.integer :reference_number
      t.string  :reference_name

      t.integer :number_of_houses
      t.integer :number_of_citizens

      t.integer :state_id
      t.integer :division_id
      t.integer :district_id
      t.integer :revenue_block_id
      t.integer :panchayat_id

      t.boolean :status,:default=>1

      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :enumeration_blocks
  end
end
