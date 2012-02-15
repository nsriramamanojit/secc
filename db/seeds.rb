session = User.create do |u|
  u.name = "Super Admin"
  u.login = 'superadmin'
  u.password =  'admin123'
  u.address1= 'Super Admin'
  u.mobile_number=9885976490
  Assignment.create(:user_id=>1,:role_id=>1,:created_at=>Time.now,:updated_at=>Time.now)
   c=UserProfile.new
   c.user_id = 1
   c.save(:validate => false)
end
session.save

session = User.create do |u|
  u.name = "Bihar Coordinator"
  u.login = '10'
  u.password =  'admin123'
  u.address1= 'Bihar'
  u.mobile_number=9885976490
  Assignment.create(:user_id=>2,:role_id=>2,:created_at=>Time.now,:updated_at=>Time.now)
   c=UserProfile.new
   c.state_id= 1
   c.user_id = 2
   c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Jahanabad Coordinator"
  u.login = '1077'
  u.password =  'admin123'
  u.address1= 'Jahanabad'
  u.mobile_number=9885976490
  Assignment.create(:user_id=>3,:role_id=>3,:created_at=>Time.now,:updated_at=>Time.now)
   c=UserProfile.new
   c.state_id= 1
   c.district_id = 1
   c.user_id = 3
   c.save(:validate => false)
end
session.save
session = User.create do |u|
  u.name = "Jahanabad Block Admin"
  u.login = '10770101'
  u.password =  'admin123'
  u.address1= 'Jahanabad'
  u.mobile_number=9885976490
  Assignment.create(:user_id=>4,:role_id=>4,:created_at=>Time.now,:updated_at=>Time.now)
   c=UserProfile.new
   c.state_id= 1
   c.district_id = 1
   c.revenue_block_id=1
   c.user_id = 4
   c.save(:validate => false)
end
session.save
############# Roles ###############
Role.create(:name=>"super_admin",:short_name=>"sa",:description=>"Super Admin",:created_at=>Time.now,:created_by=>1)
Role.create(:name=>"state_coordinator",:short_name=>"sc",:description=>"State Coordinator",:created_at=>Time.now,:created_by=>1)
Role.create(:name=>"district_coordinator",:short_name=>"dc",:description=>"District Coordinator",:created_at=>Time.now,:created_by=>1)
Role.create(:name=>"block_admin",:short_name=>"ba",:description=>"Block Admin",:created_at=>Time.now,:created_by=>1)
Role.create(:name=>"block_supervisor",:short_name=>"bs",:description=>"Block Supervisor",:created_at=>Time.now,:created_by=>1)
Role.create(:name=>"block_incharge",:short_name=>"bi",:description=>"Block InCharge",:created_at=>Time.now,:created_by=>1)
##############States###############
State.create(:name=>'Bihar',:description=>'BIHAR State',:created_by=>1,:reference_number=>10,:reference_name=>"BR",:created_at=>Time.now,:created_by=>1)
###################### - DISTRICTS - ###################
=begin
District.create(:name=>"Vishali",:state_id=>1,:description=>"District-1",:reference_number=>1,:reference_name=>"VSL",:created_at=>Time.now,:created_by=>1)
District.create(:name=>"Chapra",:state_id=>1,:description=>"District-2",:reference_number=>2,:reference_name=>"CPR",:created_at=>Time.now,:created_by=>1)
District.create(:name=>"Siwan",:state_id=>1,:description=>"District-3",:reference_number=>3,:reference_name=>"SWN",:created_at=>Time.now,:created_by=>1)
District.create(:name=>"Gopal Gunj",:state_id=>1,:description=>"District-4",:reference_number=>4,:reference_name=>"GPN",:created_at=>Time.now,:created_by=>1)
District.create(:name=>"Muzfarpur",:state_id=>1,:description=>"District-5",:reference_number=>5,:reference_name=>"MFR",:created_at=>Time.now,:created_by=>1)
District.create(:name=>"West Champaran",:state_id=>1,:description=>"District-6",:reference_number=>6,:reference_name=>"WCN",:created_at=>Time.now,:created_by=>1)
District.create(:name=>"Sita Mahari",:state_id=>1,:description=>"District-7",:reference_number=>7,:reference_name=>"STR",:created_at=>Time.now,:created_by=>1)
District.create(:name=>"Sivahur",:state_id=>1,:description=>"District-8",:reference_number=>8,:reference_name=>"SVR",:created_at=>Time.now,:created_by=>1)
=end
District.create(:name=>"Jahanabad",:state_id=>1,:description=>"Jahanabad",:reference_number=>77,:reference_name=>"JBD",:created_at=>Time.now,:created_by=>1)
####################
RevenueBlock.create(:name=>"Jahanabad",:state_id=>1,:district_id=>1,:description=>"Jahanabad",:reference_number=>1,:reference_name=>"JHA",:created_at=>Time.now,:created_by=>4)
Panchayat.create(:name=>"Surangapur",:state_id=>1,:district_id=>1,:revenue_block_id=>1,:description=>"Surangapur",:reference_number=>1,:reference_name=>"SUR",:created_at=>Time.now,:created_by=>4)
=begin
RevenueBlock.create(:name=>"RB2",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB2",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB3",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB3",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB4",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB4",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB5",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB5",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB6",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB6",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB7",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB7",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB8",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB8",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB9",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB9",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB10",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB10",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB11",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB11",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB12",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB12",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB13",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB13",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB14",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB14",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB15",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB15",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB16",:state_id=>1,:district_id=>1,:description=>"RB",:reference_number=>1,:reference_name=>"RB16",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB1",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB1",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB2",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB2",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB3",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB3",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB4",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB4",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB5",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB5",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB6",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB6",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB7",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB7",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB8",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB8",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB9",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB9",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB10",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB10",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB11",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB11",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB12",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB12",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB13",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB13",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB14",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB14",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB15",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB15",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB16",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB16",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB17",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB17",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB18",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB18",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB19",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB19",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB20",:state_id=>1,:district_id=>2,:description=>"RB",:reference_number=>1,:reference_name=>"RB20",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB1",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB1",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB2",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB2",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB3",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB3",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB4",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB4",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB5",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB5",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB6",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB6",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB7",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB7",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB8",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB8",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB9",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB9",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB10",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB10",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB11",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB11",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB12",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB12",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB13",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB13",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB14",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB14",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB15",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB15",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB16",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB16",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB17",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB17",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB18",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB18",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB19",:state_id=>1,:district_id=>3,:description=>"RB",:reference_number=>1,:reference_name=>"RB19",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB1",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB1",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB2",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB2",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB3",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB3",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB4",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB4",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB5",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB5",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB6",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB6",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB7",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB7",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB8",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB8",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB9",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB9",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB10",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB10",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB11",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB11",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB12",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB12",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB13",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB13",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB14",:state_id=>1,:district_id=>4,:description=>"RB",:reference_number=>1,:reference_name=>"RB14",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB1",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB1",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB2",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB2",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB3",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB3",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB4",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB4",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB5",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB5",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB6",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB6",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB7",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB7",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB8",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB8",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB9",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB9",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB10",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB10",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB11",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB11",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB12",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB12",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB13",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB13",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB14",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB14",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB15",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB15",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB16",:state_id=>1,:district_id=>5,:description=>"RB",:reference_number=>1,:reference_name=>"RB16",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB1",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB1",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB2",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB2",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB3",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB3",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB4",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB4",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB5",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB5",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB6",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB6",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB7",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB7",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB8",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB8",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB9",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB9",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB10",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB10",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB11",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB11",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB12",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB12",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB13",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB13",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB14",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB14",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB15",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB15",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB16",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB16",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB17",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB17",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB18",:state_id=>1,:district_id=>6,:description=>"RB",:reference_number=>1,:reference_name=>"RB18",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB1",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB1",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB2",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB2",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB3",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB3",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB4",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB4",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB5",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB5",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB6",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB6",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB7",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB7",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB8",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB8",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB9",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB9",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB10",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB10",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB11",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB11",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB12",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB12",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB13",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB13",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB14",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB14",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB15",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB15",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB16",:state_id=>1,:district_id=>7,:description=>"RB",:reference_number=>1,:reference_name=>"RB16",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB1",:state_id=>1,:district_id=>8,:description=>"RB",:reference_number=>1,:reference_name=>"RB1",:created_at=>Time.now,:created_by=>1)
RevenueBlock.create(:name=>"RB2",:state_id=>1,:district_id=>8,:description=>"RB",:reference_number=>1,:reference_name=>"RB2",:created_at=>Time.now,:created_by=>1)
=end
