# Author: Chaitanya
# Date: 09022012
##############################################
class User < ActiveRecord::Base
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

  #Roles -- Begin
  def role_symbols
    roles.map do |role|
      role.name.underscore.to_sym
    end
  end

  def has_roles?(multi_roles)
    ######## checking equality of Arrays ["B","C"] == ["C","B"] #returns false
    ##########  ["B","C"].sort == ["C","B"].sort #returns true
    roles.map(&:name).sort == multi_roles.sort
  end

  def role_names
    #appending comma(,) to every role except last one
    name = ''
    roles.map(&:name).each { |r| name << r }
    name
  end
 #Roles -- End

=begin
  before_create :create_user_name
  def create_user_name
      user_profile.revenue_block.increment!(:user_count_flag)
      self.login=user_profile.state.reference_number.to_s + user_profile.district.reference_number.to_s+ "%02d" %user_profile.revenue_block.reference_number.to_s+"%02d" % user_profile.revenue_block.user_count_flag
  end
=end



  #Recent and Search
  class << self
    def recent
      order('id DESC').limit(4)
    end
  end


end
