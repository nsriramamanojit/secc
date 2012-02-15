class District < ActiveRecord::Base

  #Relations
  belongs_to :state

  #validations
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 100}
  validates :reference_number, :presence => true, :uniqueness => true, :length => { :maximum => 5}
  validates :state_id, :presence => true
  validates :reference_name, :presence => true, :uniqueness => true, :length => { :maximum => 10}

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
