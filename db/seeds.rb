session = User.create do |u|
  u.name = "Super Admin"
  u.login = 'superadmin'
  u.password = 'admin123'
  u.address1= 'Super Admin'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 1, :role_id => 1, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.user_id = 1
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Admin"
  u.login = 'admin'
  u.password = 'admin123'
  u.address1= 'Admin'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 2, :role_id => 2, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.user_id = 2
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Manager"
  u.login = 'manager'
  u.password = 'admin123'
  u.address1= 'Manager'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 3, :role_id => 3, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.user_id = 3
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "ECIL"
  u.login = 'ecil'
  u.password = 'admin123'
  u.address1= 'ECIL'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 4, :role_id => 3, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.user_id = 4
  c.save(:validate => false)
end
session.save

session = User.create do |u|
  u.name = "Bihar Coordinator"
  u.login = '10'
  u.password = 'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 5, :role_id => 4, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.state_id= 1
  c.user_id = 5
  c.save(:validate => false)
end
session.save

session = User.create do |u|
  u.name = "Jehanabad Coordinator"
  u.login = '1037'
  u.password = 'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 6, :role_id => 5, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.state_id= 1
  c.district_id = 1
  c.user_id = 6
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Vishali Coordinator"
  u.login = '1018'
  u.password = 'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 7, :role_id => 5, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.state_id= 1
  c.district_id = 2
  c.user_id = 7
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Chapra/Saran Coordinator"
  u.login = '1017'
  u.password = 'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 8, :role_id => 5, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.state_id= 1
  c.district_id = 3
  c.user_id = 8
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Siwan Coordinator"
  u.login = '1016'
  u.password = 'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 9, :role_id => 5, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.state_id= 1
  c.district_id = 4
  c.user_id = 9
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Gopalganj Coordinator"
  u.login = '1015'
  u.password = 'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 10, :role_id => 5, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.state_id= 1
  c.district_id = 5
  c.user_id = 10
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Muzaffarpur Coordinator"
  u.login = '1014'
  u.password = 'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 11, :role_id => 5, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.state_id= 1
  c.district_id = 6
  c.user_id = 11
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "West Champaran Coordinator"
  u.login = '1001'
  u.password = 'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 12, :role_id => 5, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.state_id= 1
  c.district_id = 7
  c.user_id = 12
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Sitamahari Coordinator"
  u.login = '1004'
  u.password = 'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 13, :role_id => 5, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.state_id= 1
  c.district_id = 8
  c.user_id = 13
  c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Sheohar Coordinator"
  u.login = '1003'
  u.password = 'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id => 14, :role_id => 5, :created_at => Time.now, :updated_at => Time.now)
  c=UserProfile.new
  c.state_id= 1
  c.district_id = 9
  c.user_id = 14
  c.save(:validate => false)
end
session.save

############# Roles ###############
Role.create(:name => "super_admin", :short_name => "sa", :description => "Super Admin", :created_at => Time.now, :created_by => 1)
Role.create(:name => "admin", :short_name => "ad", :description => "Admin", :created_at => Time.now, :created_by => 1)
Role.create(:name => "manager", :short_name => "ma", :description => "Manager", :created_at => Time.now, :created_by => 1)
Role.create(:name => "state_coordinator", :short_name => "sc", :description => "State Coordinator", :created_at => Time.now, :created_by => 1)
Role.create(:name => "district_coordinator", :short_name => "dc", :description => "District Coordinator", :created_at => Time.now, :created_by => 1)
Role.create(:name => "block_admin", :short_name => "ba", :description => "Block Admin", :created_at => Time.now, :created_by => 1)
Role.create(:name => "block_supervisor", :short_name => "bs", :description => "Block Supervisor", :created_at => Time.now, :created_by => 1)
Role.create(:name => "block_incharge", :short_name => "bi", :description => "Block InCharge", :created_at => Time.now, :created_by => 1)
##############States###############
State.create(:name => 'Bihar', :description => 'BIHAR State', :created_by => 1, :reference_number => 10, :reference_name => "BR", :created_at => Time.now, :created_by => 1)
