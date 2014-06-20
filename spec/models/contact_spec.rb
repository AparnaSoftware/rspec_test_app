require 'rails_helper'

describe Contact do
 it "has a valid factory" do 
 	Factory.create(:contact).should be_valid 
 end 
 it "is invalid without a firstname" do 
	Factory.build(:contact, firstname: nil).should_not be_valid 
end 
it "is invalid without a lastname" do 
	Factory.build(:contact, lastname: nil).should_not be_valid 
end 

 # it "has a valid factory"
 # it "is invalid without a firstname" 
 # it "is invalid without a lastname"
 it "returns a contact's full name as a string"
end

