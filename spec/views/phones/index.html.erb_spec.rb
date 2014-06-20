require 'rails_helper'

RSpec.describe "phones/index", :type => :view do
  before(:each) do
    assign(:phones, [
      Phone.create!(
        :home => 1,
        :mobile => "Mobile"
      ),
      Phone.create!(
        :home => 1,
        :mobile => "Mobile"
      )
    ])
  end

  it "renders a list of phones" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
  end
end
