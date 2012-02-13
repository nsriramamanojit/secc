class CreatePanchayats < ActiveRecord::Migration
  def self.up
    create_table :panchayats do |t|
      t.string  :name, :null=>false
      t.integer :state_id
      t.integer :division_id
      t.integer :district_id
      t.integer :revenue_block_id
      t.string  :description
      t.integer :reference_number
      t.string  :reference_name

      t.boolean :status,:default=>0

      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :panchayats
  end
end
