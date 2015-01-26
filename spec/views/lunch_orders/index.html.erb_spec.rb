require 'rails_helper'

RSpec.describe "lunch_orders/index", :type => :view do
  before(:each) do
    assign(:lunch_orders, [
      LunchOrder.create!(
        :user => nil,
        :menu_content => nil
      ),
      LunchOrder.create!(
        :user => nil,
        :menu_content => nil
      )
    ])
  end

  it "renders a list of lunch_orders" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
