require 'rails_helper'

RSpec.describe "lunch_orders/new", :type => :view do
  before(:each) do
    assign(:lunch_order, LunchOrder.new(
      :user => nil,
      :menu_content => nil
    ))
  end

  it "renders new lunch_order form" do
    render

    assert_select "form[action=?][method=?]", lunch_orders_path, "post" do

      assert_select "input#lunch_order_user_id[name=?]", "lunch_order[user_id]"

      assert_select "input#lunch_order_menu_content_id[name=?]", "lunch_order[menu_content_id]"
    end
  end
end
