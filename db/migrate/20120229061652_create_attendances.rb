class CreateAttendances < ActiveRecord::Migration
  def self.up
    create_table :attendances do |t|
      t.integer :revenue_block_id
      t.date    :date
      t.integer :no_of_deo_attended,:default=>0
      t.string  :correction_deo_attended,:default=>0
      t.integer :no_of_deo_absent,:default=>0
      t.string  :correction_deo_absent,:default=>0
      t.integer :no_of_enu_attended,:default=>0
      t.string  :correction_enu_attended,:default=>0
      t.integer :no_of_enu_absent,:default=>0
      t.string  :correction_enu_absent,:default=>0
      t.integer :no_of_tpc,:default=>0
      t.string  :correction_no_of_tpc,:default=>0
      t.integer :no_of_supervisory ,:default=>0
      t.string  :correction_no_of_supervisory,:default=>0
      t.integer :no_of_ahc_completed ,:default=>0
      t.string  :correction_no_of_ahc_completed,:default=>0
      t.integer :no_of_citizens_completed ,:default=>0
      t.string  :correction_no_of_citizens_completed,:default=>0
      t.integer :cumulative_citizens  ,:default=>0
      t.string  :correction_cumulative_citizens,:default=>0
      t.integer :no_of_eb_completed_enumerator ,:default=>0
      t.string  :correction_no_of_eb_completed_enumerator,:default=>0
      t.integer :no_of_eb_completed_system,:default=>0
      t.string  :correction_no_of_eb_completed_system,:default=>0
      t.integer :no_of_eb_nic_uploaded,:default=>0
      t.string  :correction_no_of_eb_nic_uploaded,:default=>0

      t.boolean :status,:default=>0
      t.integer :created_by
      t.integer :modified_by
      t.date    :updated_date

      t.timestamps
    end
  end

  def self.down
    drop_table :attendances
  end
end
