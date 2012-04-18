class CreateVillages < ActiveRecord::Migration
  def self.up
    create_table :villages do |t|

      t.string :name
      t.string :reference_number
      t.string :description

      t.integer :state_id
      t.integer :division_id
      t.integer :district_id
      t.integer :revenue_block_id
      t.integer :panchayat_id

      t.boolean :status, :default=>1

      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :villages
  end
end
