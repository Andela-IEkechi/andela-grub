require 'rails_helper'

RSpec.describe "dinner_orders/new", :type => :view do
  before(:each) do
    assign(:dinner_order, DinnerOrder.new(
      :user => nil,
      :menu_content => nil
    ))
  end

  it "renders new dinner_order form" do
    render

    assert_select "form[action=?][method=?]", dinner_orders_path, "post" do

      assert_select "input#dinner_order_user_id[name=?]", "dinner_order[user_id]"

      assert_select "input#dinner_order_menu_content_id[name=?]", "dinner_order[menu_content_id]"
    end
  end
end
