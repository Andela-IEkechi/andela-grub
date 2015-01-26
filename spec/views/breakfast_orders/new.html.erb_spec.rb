require 'rails_helper'

RSpec.describe "breakfast_orders/new", :type => :view do
  before(:each) do
    assign(:breakfast_order, BreakfastOrder.new(
      :user => nil,
      :menu_content => nil
    ))
  end

  it "renders new breakfast_order form" do
    render

    assert_select "form[action=?][method=?]", breakfast_orders_path, "post" do

      assert_select "input#breakfast_order_user_id[name=?]", "breakfast_order[user_id]"

      assert_select "input#breakfast_order_menu_content_id[name=?]", "breakfast_order[menu_content_id]"
    end
  end
end
