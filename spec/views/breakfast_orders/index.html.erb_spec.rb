require 'rails_helper'

RSpec.describe "breakfast_orders/index", :type => :view do
  before(:each) do
    assign(:breakfast_orders, [
      BreakfastOrder.create!(
        :user => nil,
        :menu_content => nil
      ),
      BreakfastOrder.create!(
        :user => nil,
        :menu_content => nil
      )
    ])
  end

  it "renders a list of breakfast_orders" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
