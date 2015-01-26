require "rails_helper"

RSpec.describe BreakfastOrdersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/breakfast_orders").to route_to("breakfast_orders#index")
    end

    it "routes to #new" do
      expect(:get => "/breakfast_orders/new").to route_to("breakfast_orders#new")
    end

    it "routes to #show" do
      expect(:get => "/breakfast_orders/1").to route_to("breakfast_orders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/breakfast_orders/1/edit").to route_to("breakfast_orders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/breakfast_orders").to route_to("breakfast_orders#create")
    end

    it "routes to #update" do
      expect(:put => "/breakfast_orders/1").to route_to("breakfast_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/breakfast_orders/1").to route_to("breakfast_orders#destroy", :id => "1")
    end

  end
end
