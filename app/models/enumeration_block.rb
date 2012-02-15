# Author :Chaitanya
# Date: 15022012
# ##################################################
class EnumerationBlock < ActiveRecord::Base
  #Relation
  belongs_to :panchayat

  #validations
  validates :name, :presence => true,  :length => { :maximum => 100}
  validates :reference_number, :presence => true, :uniqueness => true, :length => { :maximum => 5}
  validates :panchayat_id, :presence => true

  #filters
  before_create :created_user_id
  def created_user_id
      self.created_by = UserSession.find.user.id
  end

  #search and recent
    class << self
    def recent
      order('created_at DESC').limit(4)
    end
  end
end
