# Author :Chaitanya
# Date: 15022012
# ##################################################
class EnumerationBlock < ActiveRecord::Base
  #Relation
  belongs_to :panchayat

  #validations
  #validates :name, :presence => true,  :length => { :maximum => 100}
  validates :panchayat_id, :presence => true
  validates :reference_number, :presence => true, :length => {:maximum => 5} #:uniqueness => true,

  #filters
=begin
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

    def total_houses
      sum(:number_of_houses)
    end

    def total_citizens
      sum(:number_of_citizens)
    end

    def catalog_completed
      count(:conditions => {:catalog_status => "Completed"} )
    end
    def catalog_pending
      count(:conditions => {:catalog_status => "Pending"} )
    end
    def catalog_nys
      count(:conditions => {:catalog_status => "NYS"} )
    end
    def catalog_going
      count(:conditions => {:catalog_status => "Going"} )
    end
    def catalog_no_data
      count(:conditions => {:catalog_status => "No Data"} )
    end

    def enumeration_completed
      count(:conditions => {:enumeration_status => "Completed"} )
    end
    def enumeration_pending
      count(:conditions => {:enumeration_status => "Pending"} )
    end
    def enumeration_nys
      count(:conditions => {:enumeration_status => "NYS"} )
    end
    def enumeration_going
      count(:conditions => {:enumeration_status => "Going"} )
    end
    def enumeration_no_data
      count(:conditions => {:enumeration_status => "No Data"} )
    end

    def enu_nic_upload_completed
      count(:conditions => {:enu_nic_upload_status => "Completed"} )
    end
    def enu_nic_upload_pending
      count(:conditions => {:enu_nic_upload_status => "Pending"} )
    end
    def enu_nic_upload_nys
      count(:conditions => {:enu_nic_upload_status => "NYS"} )
    end
    def enu_nic_upload_going
      count(:conditions => {:enu_nic_upload_status => "Going"} )
    end
    def enu_nic_upload_no_data
      count(:conditions => {:enu_nic_upload_status => "No Data"} )
    end
    def supervising_completed
      count(:conditions => {:supervising_status => "Completed"} )
    end
    def supervising_pending
      count(:conditions => {:supervising_status => "Pending"} )
    end
    def supervising_nys
      count(:conditions => {:supervising_status => "NYS"} )
    end
    def supervising_going
      count(:conditions => {:supervising_status => "Going"} )
    end
    def supervising_no_data
      count(:conditions => {:supervising_status => "No Data"} )
    end
    def super_nic_upload_completed
      count(:conditions => {:super_nic_upload_status => "Completed"} )
    end
    def super_nic_upload_pending
      count(:conditions => {:super_nic_upload_status => "Pending"} )
    end
    def super_nic_upload_nys
      count(:conditions => {:super_nic_upload_status => "NYS"} )
    end
    def super_nic_upload_going
      count(:conditions => {:super_nic_upload_status => "Going"} )
    end
    def super_nic_upload_no_data
      count(:conditions => {:super_nic_upload_status => "No Data"} )
    end

    def draft_list_completed
      count(:conditions => {:draft_list_status => "Completed"} )
    end
    def draft_list_pending
      count(:conditions => {:draft_list_status => "Pending"} )
    end
    def draft_list_nys
      count(:conditions => {:draft_list_status => "NYS"} )
    end
    def draft_list_going
      count(:conditions => {:draft_list_status => "Going"} )
    end
    def draft_list_no_data
      count(:conditions => {:draft_list_status => "No Data"} )
    end

    def draft_list_edit_completed
      count(:conditions => {:draft_list_edit_status => "Completed"} )
    end
    def draft_list_edit_pending
      count(:conditions => {:draft_list_edit_status => "Pending"} )
    end
    def draft_list_edit_nys
      count(:conditions => {:draft_list_edit_status => "NYS"} )
    end
    def draft_list_edit_going
      count(:conditions => {:draft_list_edit_status => "Going"} )
    end
    def draft_list_edit_no_data
      count(:conditions => {:draft_list_edit_status => "No Data"} )
    end
    def final_list_completed
      count(:conditions => {:final_list_status => "Completed"} )
    end
    def final_list_pending
      count(:conditions => {:final_list_status => "Pending"} )
    end
    def final_list_nys
      count(:conditions => {:final_list_status => "NYS"} )
    end
    def final_list_going
      count(:conditions => {:final_list_status => "Going"} )
    end
    def final_list_no_data
      count(:conditions => {:final_list_status => "No Data"} )
    end

  end
end
