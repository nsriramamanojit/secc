class District < ActiveRecord::Base

  #Relations
  belongs_to :state
  has_many :revenue_blocks
  has_many :panchayats
  has_many :enumeration_blocks

  #validations
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 100}
  validates :reference_number, :presence => true, :uniqueness => true, :length => { :maximum => 5}
  validates :state_id, :presence => true
  validates :reference_name, :presence => true, :uniqueness => true, :length => { :maximum => 10}

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
        #where(:name.matches => "%#{query}%") #from meta_where gem
        joins(:state).where({:name.matches =>"%#{query}%"}|{:states=>[:name.matches=>"%#{query}%"]})

      else
        scoped
      end
    end
  end

end
