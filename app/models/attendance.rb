class Attendance < ActiveRecord::Base

  #Relations
  belongs_to :revenue_block



  #search and recent
  class << self
    def recent
      order('created_at DESC').limit(4)
    end

  end

end
