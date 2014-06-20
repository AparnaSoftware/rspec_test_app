require 'rails_helper'

RSpec.describe "contacts/show", :type => :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :name => "Name",
      :email => "Email",
      :phno => "Phno"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phno/)
  end
end
