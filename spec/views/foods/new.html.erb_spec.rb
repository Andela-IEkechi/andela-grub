require 'rails_helper'

RSpec.describe "foods/new", :type => :view do
  before(:each) do
    assign(:food, Food.new(
      :item => "MyText",
      :minimum_amount => 1
    ))
  end

  it "renders new food form" do
    render

    assert_select "form[action=?][method=?]", foods_path, "post" do

      assert_select "textarea#food_item[name=?]", "food[item]"

      assert_select "input#food_minimum_amount[name=?]", "food[minimum_amount]"
    end
  end
end
