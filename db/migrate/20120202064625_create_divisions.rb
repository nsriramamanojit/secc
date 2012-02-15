# Created by Chaitanya Ram
# Date: 02022012
##############################################
class CreateDivisions < ActiveRecord::Migration
  def self.up
    create_table :divisions do |t|

      t.string  :name, :null=>false
      t.integer :state_id
      t.string  :description
      t.integer :reference_number       # To Refer Division with other Format ex: 10
      t.string  :reference_name         # To Refer Division with Reference Name
      t.boolean :status,:default=>1

      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :divisions
  end
end
