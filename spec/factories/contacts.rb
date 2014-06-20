# Read about factories at https://github.com/thoughtbot/factory_girl

# FactoryGirl.define do
#   factory :contact do
#     name "Aparna Bhat"
#     email "ab@gmail.com"
#     phno "9785461230"
#   end
# end
# FactoryGirl.define do 
# 	factory :contact do |f| 
# 		f.firstname "John" 
# 		f.lastname "Doe" 
# 	end 
# end 

require 'faker' 
FactoryGirl.define do 
   factory :contact do |f|
    f.firstname { Faker::Name.first_name } 
    f.lastname { Faker::Name.last_name }
    f.phone { Faker::PhoneNumber.phno}
 
    end 
end 
