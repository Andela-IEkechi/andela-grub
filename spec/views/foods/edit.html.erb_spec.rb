require 'rails_helper'

RSpec.describe "foods/edit", :type => :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      :item => "MyText",
      :minimum_amount => 1
    ))
  end

  it "renders the edit food form" do
    render

    assert_select "form[action=?][method=?]", food_path(@food), "post" do

      assert_select "textarea#food_item[name=?]", "food[item]"

      assert_select "input#food_minimum_amount[name=?]", "food[minimum_amount]"
    end
  end
end
