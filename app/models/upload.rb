class Upload < ActiveRecord::Base
  #Realtions
  has_many :revenue_blocks

  #Validations
  has_attached_file :dsr
  has_attached_file :der
  validates_attachment_presence :dsr
  validates_attachment_presence :der

  #search and recent
  class << self
    def recent
      order('created_at DESC').limit(4)
    end

    def search(query)
      if query
        where(:date.matches => "%#{query}%") #from meta_where gem
      else
        scoped
      end
    end
  end

end
