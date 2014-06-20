require 'rails_helper'

RSpec.describe "phones/show", :type => :view do
  before(:each) do
    @phone = assign(:phone, Phone.create!(
      :home => 1,
      :mobile => "Mobile"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Mobile/)
  end
end
