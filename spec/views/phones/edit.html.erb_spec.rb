require 'rails_helper'

RSpec.describe "phones/edit", :type => :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!(
      :home => 1,
      :mobile => "MyString"
    ))
  end

  it "renders the edit phone form" do
    render

    assert_select "form[action=?][method=?]", phone_path(@phone), "post" do

      assert_select "input#phone_home[name=?]", "phone[home]"

      assert_select "input#phone_mobile[name=?]", "phone[mobile]"
    end
  end
end
