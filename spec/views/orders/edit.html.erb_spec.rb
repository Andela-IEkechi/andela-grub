require 'rails_helper'

RSpec.describe "orders/edit", :type => :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :user => nil,
      :menu_content => nil,
      :amount => 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_user_id[name=?]", "order[user_id]"

      assert_select "input#order_menu_content_id[name=?]", "order[menu_content_id]"

      assert_select "input#order_amount[name=?]", "order[amount]"
    end
  end
end
