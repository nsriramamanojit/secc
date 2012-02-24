# Author :Chaitanya
# Date: 15022012
# ##################################################
class EnumerationBlock < ActiveRecord::Base
  #Relation
  belongs_to :panchayat
  belongs_to :user_profile
  belongs_to :revenue_block


  #validations
  #validates :name, :presence => true,  :length => { :maximum => 100
  validates :panchayat_id, :presence => true
  validates :reference_number, :presence => true, :length => {:maximum => 5 } #:uniqueness => true,}

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
    def search(id,query)
      if query
      else
        scoped
      end
    end

    def total_houses
      sum(:number_of_houses)
    end

    def total_citizens
      sum(:number_of_citizens)
    end

    def catalog_completed
      where(:catalog_status => "Completed")
    end
    def catalog_pending
      where(:catalog_status => "Pending" )
    end
    def catalog_nys
      where(:catalog_status => "NYS" )
    end
    def catalog_going
      where(:catalog_status => "Going" )
    end
    def catalog_no_data
      where(:catalog_status => "No Data" )
    end

    def enumeration_completed
      where(:enumeration_status => "Completed" )
    end
    def enumeration_pending
      where(:enumeration_status => "Pending" )
    end
    def enumeration_nys
      where(:enumeration_status => "NYS" )
    end
    def enumeration_going
      where(:enumeration_status => "Going" )
    end
    def enumeration_no_data
      where(:enumeration_status => "No Data" )
    end

    def enu_nic_upload_completed
      where(:enu_nic_upload_status => "Completed" )
    end
    def enu_nic_upload_pending
      where(:enu_nic_upload_status => "Pending" )
    end
    def enu_nic_upload_nys
      where(:enu_nic_upload_status => "NYS" )
    end
    def enu_nic_upload_going
      where(:enu_nic_upload_status => "Going" )
    end
    def enu_nic_upload_no_data
      where(:enu_nic_upload_status => "No Data" )
    end
    def supervising_completed
      where(:supervising_status => "Completed" )
    end
    def supervising_pending
      where(:supervising_status => "Pending" )
    end
    def supervising_nys
      where(:supervising_status => "NYS" )
    end
    def supervising_going
      where(:supervising_status => "Going" )
    end
    def supervising_no_data
      where(:supervising_status => "No Data" )
    end
    def super_nic_upload_completed
      where(:super_nic_upload_status => "Completed" )
    end
    def super_nic_upload_pending
      where(:super_nic_upload_status => "Pending" )
    end
    def super_nic_upload_nys
      where(:super_nic_upload_status => "NYS" )
    end
    def super_nic_upload_going
      where(:super_nic_upload_status => "Going" )
    end
    def super_nic_upload_no_data
      where(:super_nic_upload_status => "No Data" )
    end

    def draft_list_completed
      where(:draft_list_status => "Completed" )
    end
    def draft_list_pending
      where(:draft_list_status => "Pending" )
    end
    def draft_list_nys
      where(:draft_list_status => "NYS" )
    end
    def draft_list_going
      where(:draft_list_status => "Going" )
    end
    def draft_list_no_data
      where(:draft_list_status => "No Data" )
    end

    def draft_list_edit_completed
      where(:draft_list_edit_status => "Completed" )
    end
    def draft_list_edit_pending
      where(:draft_list_edit_status => "Pending" )
    end
    def draft_list_edit_nys
      where(:draft_list_edit_status => "NYS" )
    end
    def draft_list_edit_going
      where(:draft_list_edit_status => "Going" )
    end
    def draft_list_edit_no_data
      where(:draft_list_edit_status => "No Data" )
    end
    def final_list_completed
      where(:final_list_status => "Completed" )
    end
    def final_list_pending
      where(:final_list_status => "Pending" )
    end
    def final_list_nys
      where(:final_list_status => "NYS" )
    end
    def final_list_going
      where(:final_list_status => "Going" )
    end
    def final_list_no_data
      where(:final_list_status => "No Data" )
    end

  end
end
