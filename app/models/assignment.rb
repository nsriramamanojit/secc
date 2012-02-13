# Author: Chaitanya
# Date: 11022012
###########################################
class Assignment < ActiveRecord::Base
    #Relations
    belongs_to :role
    belongs_to :user

end
