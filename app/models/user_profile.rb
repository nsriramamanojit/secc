# Author :Chaitanya
# Date: 10022012
##############################################
class UserProfile < ActiveRecord::Base

  #Relations
  belongs_to :user
  belongs_to :state
  belongs_to :division
  belongs_to :district
  belongs_to :revenue_block

  #validations
  validates :state_id, :presence => true
#  validates :district_id, :presence => true
#  validates :revenue_block_id, :presence => true

end
