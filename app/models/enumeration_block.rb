# Author :Chaitanya
# Date: 15022012
# ##################################################
class EnumerationBlock < ActiveRecord::Base
  #Relation
  belongs_to :panchayat
  belongs_to :user_profile
  belongs_to :revenue_block
  belongs_to :district


  #validations
  #validates :name, :presence => true,  :length => { :maximum => 100
  #validates :panchayat_id, :presence => true
  validates :reference_number, :presence => true, :length => {:maximum => 5} #:uniqueness => true,}

=begin
  #filters
  before_create :created_user_id
  def created_user_id
      self.created_by = UserSession.find.user.id
  end
=end

  #search and recent
  class << self
    def recent
      order('created_at DESC').limit(4)
    end

    def search(id, query)
      if query
      else
        scoped
      end
    end

    def total_houses(id)
      where(:revenue_block_id => id).sum(:number_of_houses)
    end

    def total_citizens(id)
      where(:revenue_block_id => id).sum(:number_of_citizens)
    end

    def catalog_completed(id)
      where(:catalog_status => "Completed", :revenue_block_id => id)
    end

    def catalog_pending(id)
      where(:catalog_status => "Pending", :revenue_block_id => id)
    end

    def catalog_nys(id)
      where(:catalog_status => "NYS", :revenue_block_id => id)
    end

    def catalog_going(id)
      where(:catalog_status => "Going", :revenue_block_id => id)
    end

    def catalog_no_data(id)
      where(:catalog_status => "No Data", :revenue_block_id => id)
    end

    def enumeration_completed(id)
      where(:enumeration_status => "Completed", :revenue_block_id => id)
    end

    def enumeration_pending(id)
      where(:enumeration_status => "Pending", :revenue_block_id => id)
    end

    def enumeration_nys(id)
      where(:enumeration_status => "NYS", :revenue_block_id => id)
    end

    def enumeration_going(id)
      where(:enumeration_status => "Going", :revenue_block_id => id)
    end

    def enumeration_no_data(id)
      where(:enumeration_status => "No Data", :revenue_block_id => id)
    end

    def enu_nic_upload_completed(id)
      where(:enu_nic_upload_status => "Completed", :revenue_block_id => id)
    end

    def enu_nic_upload_pending(id)
      where(:enu_nic_upload_status => "Pending", :revenue_block_id => id)
    end

    def enu_nic_upload_nys(id)
      where(:enu_nic_upload_status => "NYS", :revenue_block_id => id)
    end

    def enu_nic_upload_going(id)
      where(:enu_nic_upload_status => "Going", :revenue_block_id => id)
    end

    def enu_nic_upload_no_data(id)
      where(:enu_nic_upload_status => "No Data", :revenue_block_id => id)
    end

    def supervising_completed(id)
      where(:supervising_status => "Completed", :revenue_block_id => id)
    end

    def supervising_pending(id)
      where(:supervising_status => "Pending", :revenue_block_id => id)
    end

    def supervising_nys(id)
      where(:supervising_status => "NYS", :revenue_block_id => id)
    end

    def supervising_going(id)
      where(:supervising_status => "Going", :revenue_block_id => id)
    end

    def supervising_no_data (id)
      where(:supervising_status => "No Data", :revenue_block_id => id)
    end

    def super_nic_upload_completed(id)
      where(:super_nic_upload_status => "Completed", :revenue_block_id => id)
    end

    def super_nic_upload_pending(id)
      where(:super_nic_upload_status => "Pending", :revenue_block_id => id)
    end

    def super_nic_upload_nys(id)
      where(:super_nic_upload_status => "NYS", :revenue_block_id => id)
    end

    def super_nic_upload_going(id)
      where(:super_nic_upload_status => "Going", :revenue_block_id => id)
    end

    def super_nic_upload_no_data(id)
      where(:super_nic_upload_status => "No Data", :revenue_block_id => id)
    end

    def draft_list_completed(id)
      where(:draft_list_status => "Completed", :revenue_block_id => id)
    end

    def draft_list_pending(id)
      where(:draft_list_status => "Pending", :revenue_block_id => id)
    end

    def draft_list_nys(id)
      where(:draft_list_status => "NYS", :revenue_block_id => id)
    end

    def draft_list_going(id)
      where(:draft_list_status => "Going", :revenue_block_id => id)
    end

    def draft_list_no_data(id)
      where(:draft_list_status => "No Data", :revenue_block_id => id)
    end

    def draft_list_edit_completed(id)
      where(:draft_list_edit_status => "Completed", :revenue_block_id => id)
    end

    def draft_list_edit_pending(id)
      where(:draft_list_edit_status => "Pending", :revenue_block_id => id)
    end

    def draft_list_edit_nys(id)
      where(:draft_list_edit_status => "NYS", :revenue_block_id => id)
    end

    def draft_list_edit_going (id)
      where(:draft_list_edit_status => "Going", :revenue_block_id => id)
    end

    def draft_list_edit_no_data(id)
      where(:draft_list_edit_status => "No Data", :revenue_block_id => id)
    end

    def final_list_completed (id)
      where(:final_list_status => "Completed", :revenue_block_id => id)
    end

    def final_list_pending(id)
      where(:final_list_status => "Pending", :revenue_block_id => id)
    end

    def final_list_nys (id)
      where(:final_list_status => "NYS", :revenue_block_id => id)
    end

    def final_list_going(id)
      where(:final_list_status => "Going", :revenue_block_id => id)
    end

    def final_list_no_data (id)
      where(:final_list_status => "No Data", :revenue_block_id => id)
    end

=begin
    ##########################################################
    def total_houses_rb
      where(:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id).sum(:number_of_houses)
    end

    def total_citizens_rb
      where(:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id).sum(:number_of_citizens)
    end

    def catalog_completed_rb
      where(:catalog_status => "Completed",:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def catalog_pending_rb
      where(:catalog_status => "Pending" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def catalog_nys_rb
      where(:catalog_status => "NYS",:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id )
    end
    def catalog_going_rb
      where(:catalog_status => "Going" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def catalog_no_data_rb
      where(:catalog_status => "No Data" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end

    def enumeration_completed_rb
      where(:enumeration_status => "Completed" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def enumeration_pending_rb
      where(:enumeration_status => "Pending" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def enumeration_nys_rb
      where(:enumeration_status => "NYS" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def enumeration_going_rb
      where(:enumeration_status => "Going" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def enumeration_no_data_rb
      where(:enumeration_status => "No Data" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end

    def enu_nic_upload_completed_rb
      where(:enu_nic_upload_status => "Completed",:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id )
    end
    def enu_nic_upload_pending_rb
      where(:enu_nic_upload_status => "Pending" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def enu_nic_upload_nys_rb
      where(:enu_nic_upload_status => "NYS" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def enu_nic_upload_going_rb
      where(:enu_nic_upload_status => "Going" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def enu_nic_upload_no_data_rb
      where(:enu_nic_upload_status => "No Data" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def supervising_completed_rb
      where(:supervising_status => "Completed",:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id )
    end
    def supervising_pending_rb
      where(:supervising_status => "Pending" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def supervising_nys_rb
      where(:supervising_status => "NYS" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def supervising_going_rb
      where(:supervising_status => "Going" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def supervising_no_data_rb
      where(:supervising_status => "No Data" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def super_nic_upload_completed_rb
      where(:super_nic_upload_status => "Completed" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def super_nic_upload_pending_rb
      where(:super_nic_upload_status => "Pending",:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id )
    end
    def super_nic_upload_nys_rb
      where(:super_nic_upload_status => "NYS" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def super_nic_upload_going_rb
      where(:super_nic_upload_status => "Going" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def super_nic_upload_no_data_rb
      where(:super_nic_upload_status => "No Data" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end

    def draft_list_completed_rb
      where(:draft_list_status => "Completed",:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id )
    end
    def draft_list_pending_rb
      where(:draft_list_status => "Pending" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def draft_list_nys_rb
      where(:draft_list_status => "NYS" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def draft_list_going_rb
      where(:draft_list_status => "Going" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def draft_list_no_data_rb
      where(:draft_list_status => "No Data" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end

    def draft_list_edit_completed_rb
      where(:draft_list_edit_status => "Completed" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def draft_list_edit_pending_rb
      where(:draft_list_edit_status => "Pending" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def draft_list_edit_nys_rb
      where(:draft_list_edit_status => "NYS" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def draft_list_edit_going_rb
      where(:draft_list_edit_status => "Going" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def draft_list_edit_no_data_rb
      where(:draft_list_edit_status => "No Data" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def final_list_completed_rb
      where(:final_list_status => "Completed" ,:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id)
    end
    def final_list_pending_rb
      where(:final_list_status => "Pending",:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id )
    end
    def final_list_nys_rb
      where(:final_list_status => "NYS",:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id )
    end
    def final_list_going_rb
      where(:final_list_status => "Going",:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id )
    end
    def final_list_no_data_rb
      where(:final_list_status => "No Data",:revenue_block_id=>UserSession.find.user.user_profile.revenue_block_id )
    end
=end

  end
end
