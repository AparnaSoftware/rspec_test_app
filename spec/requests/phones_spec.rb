require 'rails_helper'

RSpec.describe "Phones", :type => :request do
  describe "GET /phones" do
    it "works! (now write some real specs)" do
      get phones_path
      expect(response.status).to be(200)
    end
  end
end
