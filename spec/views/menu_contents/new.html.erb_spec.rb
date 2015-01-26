require 'rails_helper'

RSpec.describe "menu_contents/new", :type => :view do
  before(:each) do
    assign(:menu_content, MenuContent.new(
      :day => nil,
      :food => nil
    ))
  end

  it "renders new menu_content form" do
    render

    assert_select "form[action=?][method=?]", menu_contents_path, "post" do

      assert_select "input#menu_content_day_id[name=?]", "menu_content[day_id]"

      assert_select "input#menu_content_food_id[name=?]", "menu_content[food_id]"
    end
  end
end
