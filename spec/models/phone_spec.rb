require 'rails_helper'

describe Phone do
  it "does not allow duplicate phone numbers per contact" do 
	contact = FactoryGirl.create(:contact) 
	FactoryGirl(:phone, contact: contact, phone_type: "home", number: "785-555-1234") 
	FactoryGirl.build(:phone, contact: contact, phone_type: "mobile", number: "785-555-1234").should_not be_valid 
end 
end
