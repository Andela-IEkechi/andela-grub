require 'rails_helper'

RSpec.describe "orders/new", :type => :view do
  before(:each) do
    assign(:order, Order.new(
      :user => nil,
      :menu_content => nil,
      :amount => 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_user_id[name=?]", "order[user_id]"

      assert_select "input#order_menu_content_id[name=?]", "order[menu_content_id]"

      assert_select "input#order_amount[name=?]", "order[amount]"
    end
  end
end
