require "rails_helper"

RSpec.describe DinnerOrdersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dinner_orders").to route_to("dinner_orders#index")
    end

    it "routes to #new" do
      expect(:get => "/dinner_orders/new").to route_to("dinner_orders#new")
    end

    it "routes to #show" do
      expect(:get => "/dinner_orders/1").to route_to("dinner_orders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dinner_orders/1/edit").to route_to("dinner_orders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dinner_orders").to route_to("dinner_orders#create")
    end

    it "routes to #update" do
      expect(:put => "/dinner_orders/1").to route_to("dinner_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dinner_orders/1").to route_to("dinner_orders#destroy", :id => "1")
    end

  end
end
