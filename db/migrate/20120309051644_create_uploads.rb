class CreateUploads < ActiveRecord::Migration
  def self.up
    create_table :uploads do |t|

      t.integer :revenue_block_id
      t.date    :date
      #file fields for Data Summary Report
      t.text    :dsr_description
      t.string  :dsr_file_name
      t.string  :dsr_content_type
      t.integer :dsr_file_size
      t.datetime:dsr_updated_at
      #file Fields for Data Entry Daily Report
      t.text    :der_description
      t.string  :der_file_name
      t.string  :der_content_type
      t.integer :der_file_size
      t.datetime:der_updated_at

      t.integer :uploaded_by
      t.integer :approved_by
      t.date    :approved_date

      t.boolean :status,:default=>0

      t.timestamps
    end
  end

  def self.down
    drop_table :uploads
  end
end
