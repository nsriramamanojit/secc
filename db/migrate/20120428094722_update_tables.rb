class UpdateTables < ActiveRecord::Migration
=begin
  def self.up
    add_column :enumeration_blocks, :catalog_complete_date,:date
    add_column :enumeration_blocks, :enumeration_start_date,:date
    add_column :enumeration_blocks, :enumeration_end_date,:date
  end

  def self.down
    remove_column :enumeration_blocks, :catalog_complete_date
    remove_column :enumeration_blocks, :enumeration_start_date
    remove_column :enumeration_blocks, :enumeration_end_date
  end
=end

end
