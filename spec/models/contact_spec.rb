require 'rails_helper'

describe Contact do
 it "has a valid factory" do 
 FactoryGirl.create(:contact).should be_valid 
 end 
 it "is invalid without a firstname" do 
	FactoryGirl.build(:contact, firstname: nil).should_not be_valid 
end 
it "is invalid without a lastname" do 
	FactoryGirl.build(:contact, lastname: nil).should_not be_valid 
end 
it "returns a contact's full name as a string" do 
	contact = FactoryGirl.create(:contact, firstname: "Aparna", lastname: "Bhat").name.should == "Aparna Bhat"
	end
 # it "has a valid factory"
 # it "is invalid without a firstname" 
 # it "is invalid without a lastname"
 # it "returns a contact's full name as a string"
 describe "filter last name by letter" do      
  before :each do
 	@divya = FactoryGirl.create(:contact, lastname: "Divya") 
 	@appy = FactoryGirl.create(:contact, lastname: "Appy") 
 	@appu= FactoryGirl.create(:contact, lastname: "Appu") 
 end
  context "matching letters" do
  it "returns a sorted array of results that match" do 
  @divya = FactoryGirl.create(:contact, lastname: "Divya") 
 	@appy = FactoryGirl.create(:contact, lastname: "Appy") 
 	@appu= FactoryGirl.create(:contact, lastname: "Appu") 
  end 
   
  context "matching letters" do
      it "returns a sorted array of results that match" do
        Contact.by_letter("A").should == [@appy, @appu]
      end
    end

    context "non-matching letters" do
      it "does not return contacts that don't start with the provided letter" do
        Contact.by_letter("A").should_not include @divya
      end
    end
  end
  end
end



   