require 'rails_helper'

RSpec.describe "menu_contents/edit", :type => :view do
  before(:each) do
    @menu_content = assign(:menu_content, MenuContent.create!(
      :day => nil,
      :food => nil
    ))
  end

  it "renders the edit menu_content form" do
    render

    assert_select "form[action=?][method=?]", menu_content_path(@menu_content), "post" do

      assert_select "input#menu_content_day_id[name=?]", "menu_content[day_id]"

      assert_select "input#menu_content_food_id[name=?]", "menu_content[food_id]"
    end
  end
end
