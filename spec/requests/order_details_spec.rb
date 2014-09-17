require 'rails_helper'

RSpec.describe "OrderDetails", :type => :request do
  describe "GET /order_details" do
    it "works! (now write some real specs)" do
      get order_details_path
      expect(response.status).to be(200)
    end
  end
end
