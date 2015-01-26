require "rails_helper"

RSpec.describe MenuContentsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/menu_contents").to route_to("menu_contents#index")
    end

    it "routes to #new" do
      expect(:get => "/menu_contents/new").to route_to("menu_contents#new")
    end

    it "routes to #show" do
      expect(:get => "/menu_contents/1").to route_to("menu_contents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/menu_contents/1/edit").to route_to("menu_contents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/menu_contents").to route_to("menu_contents#create")
    end

    it "routes to #update" do
      expect(:put => "/menu_contents/1").to route_to("menu_contents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/menu_contents/1").to route_to("menu_contents#destroy", :id => "1")
    end

  end
end
