class CreateUserProfiles < ActiveRecord::Migration
  def self.up
    create_table :user_profiles do |t|
      t.integer :user_id
      t.integer :state_id
      t.integer :division_id
      t.integer :district_id
      t.integer :revenue_block_id

      t.string :employee_number

      #for Avatar Logo
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :user_profiles
  end
end
