# Author: Chaitanya
# Date: 09022012
##############################################
class User < ActiveRecord::Base
  #Authlogic Configuration
  acts_as_authentic do |c|
    c.validate_email_field = false
    c.require_password_confirmation= false
    c.validate_password_field= false
    c.login_field=false
    c.validate_login_field=false
  end

  #Relations
  has_one :user_profile
  has_many :assignments
  has_many :roles, :through => :assignments

  #Attributes for User Profile
  accepts_nested_attributes_for :user_profile, :allow_destroy => true

  #validations
  validates :name, :presence => true, :length => {:maximum => 100}
  validates :mobile_number, :presence => true, :length => {:maximum => 10}
  validates :pin, :length => {:maximum => 6}

  #users
  scope :revenue_block_users, joins([:roles]).where(:roles => {:name => %w(block_admin block_supervisor block_incharge)})
  scope :state_users, includes([:roles]).where(:roles => {:name => %w(state_coordinator district_coordinator block_admin block_supervisor block_incharge)})
  scope :super_admin_users, includes([:roles]).where(:roles => {:name => %w(super_admin)})


  #Roles
  def role_symbols
    roles.map do |role|
      role.name.underscore.to_sym
    end
  end

  #Create Login and Password
=begin
  before_create :create_user_name
  def create_user_name
      user_profile.revenue_block.increment!(:user_count_flag)
      user = user_profile.state.reference_number.to_s + "%02d" %user_profile.district.reference_number.to_s+ "%03d" %user_profile.revenue_block.reference_number.to_s+"%02d" % user_profile.revenue_block.user_count_flag
      self.login = self.password = user
  end
=end

  #Recent and Search
  class << self
    def recent
      order('id DESC').limit(4)
    end
    def search(query,roleid)
      if query
        where(:name.matches => "%#{query}%") #from meta_where gem
      else
        scoped
      end
    end
  end


end
