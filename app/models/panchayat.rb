# Author: Chaitanya Ram
# Date: 13022012
#########################################################
class Panchayat < ActiveRecord::Base
  #Relations
  belongs_to :state
  belongs_to :district
  belongs_to :revenue_block

  has_many   :enumeration_blocks, :dependent => :destroy

  #validations
  validates :name, :presence => true,  :length => { :maximum => 100}

  validates :reference_name, :presence => true, :uniqueness => true, :length => { :maximum => 10}
  validates :reference_number, :presence => true, :uniqueness => true, :length => { :maximum => 5}

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
    def search(query)
      if query
        where(:name.matches => "%#{query}%") #from meta_where gem
      else
        scoped
      end
    end
  end
end
