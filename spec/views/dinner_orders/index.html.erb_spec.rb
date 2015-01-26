require 'rails_helper'

RSpec.describe "dinner_orders/index", :type => :view do
  before(:each) do
    assign(:dinner_orders, [
      DinnerOrder.create!(
        :user => nil,
        :menu_content => nil
      ),
      DinnerOrder.create!(
        :user => nil,
        :menu_content => nil
      )
    ])
  end

  it "renders a list of dinner_orders" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
