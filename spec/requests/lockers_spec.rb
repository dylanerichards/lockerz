require 'rails_helper'

RSpec.describe "Lockers", :type => :request do
  describe "GET /lockers" do
    it "works! (now write some real specs)" do
      get lockers_path
      expect(response.status).to be(200)
    end
  end
end
