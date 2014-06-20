require 'rails_helper'

RSpec.describe "phones/new", :type => :view do
  before(:each) do
    assign(:phone, Phone.new(
      :home => 1,
      :mobile => "MyString"
    ))
  end

  it "renders new phone form" do
    render

    assert_select "form[action=?][method=?]", phones_path, "post" do

      assert_select "input#phone_home[name=?]", "phone[home]"

      assert_select "input#phone_mobile[name=?]", "phone[mobile]"
    end
  end
end
