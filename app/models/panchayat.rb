# Author: Chaitanya Ram
# Date: 13022012
#########################################################
class Panchayat < ActiveRecord::Base
    #Relations
  belongs_to :state
  belongs_to :district
  belongs_to :revenue_block

  #validations
  validates :name, :presence => true,  :length => { :maximum => 100}

  validates :reference_name, :presence => true, :uniqueness => true, :length => { :maximum => 10}
  validates :reference_number, :presence => true, :uniqueness => true, :length => { :maximum => 5}

  #search and recent
    class << self
    def recent
      order('created_at DESC').limit(4)
    end
  end
end
