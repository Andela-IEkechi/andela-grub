require 'rails_helper'

RSpec.describe "LunchOrders", :type => :request do
  describe "GET /lunch_orders" do
    it "works! (now write some real specs)" do
      get lunch_orders_path
      expect(response).to have_http_status(200)
    end
  end
end
