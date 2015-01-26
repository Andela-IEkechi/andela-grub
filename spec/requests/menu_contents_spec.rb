require 'rails_helper'

RSpec.describe "MenuContents", :type => :request do
  describe "GET /menu_contents" do
    it "works! (now write some real specs)" do
      get menu_contents_path
      expect(response).to have_http_status(200)
    end
  end
end
