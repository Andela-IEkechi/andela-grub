require 'rails_helper'

RSpec.describe "DinnerOrders", :type => :request do
  describe "GET /dinner_orders" do
    it "works! (now write some real specs)" do
      get dinner_orders_path
      expect(response).to have_http_status(200)
    end
  end
end
