# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
##############States###############
State.create(:name=>'Bihar',:description=>'BIHAR State',:created_by=>1,:reference_number=>10,:reference_name=>"BR",:created_at=>Time.now)

###################### - DISTRICTS - ###################
District.create(:name=>"Vishali",:state_id=>1,:description=>"District-1",:reference_number=>1,:reference_name=>"VSL",:created_at=>Time.now)
District.create(:name=>"Chapra",:state_id=>1,:description=>"District-2",:reference_number=>2,:reference_name=>"CPR",:created_at=>Time.now)
District.create(:name=>"Siwan",:state_id=>1,:description=>"District-3",:reference_number=>3,:reference_name=>"SWN",:created_at=>Time.now)
District.create(:name=>"Gopal Gunj",:state_id=>1,:description=>"District-4",:reference_number=>4,:reference_name=>"GPN",:created_at=>Time.now)
District.create(:name=>"Muzfarpur",:state_id=>1,:description=>"District-5",:reference_number=>5,:reference_name=>"MFR",:created_at=>Time.now)
District.create(:name=>"West Champaran",:state_id=>1,:description=>"District-6",:reference_number=>6,:reference_name=>"WCN",:created_at=>Time.now)
District.create(:name=>"Sita Mahari",:state_id=>1,:description=>"District-7",:reference_number=>7,:reference_name=>"STR",:created_at=>Time.now)
District.create(:name=>"Sivahur",:state_id=>1,:description=>"District-8",:reference_number=>8,:reference_name=>"SVR",:created_at=>Time.now)

