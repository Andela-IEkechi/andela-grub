require 'rails_helper'

RSpec.describe "breakfast_orders/edit", :type => :view do
  before(:each) do
    @breakfast_order = assign(:breakfast_order, BreakfastOrder.create!(
      :user => nil,
      :menu_content => nil
    ))
  end

  it "renders the edit breakfast_order form" do
    render

    assert_select "form[action=?][method=?]", breakfast_order_path(@breakfast_order), "post" do

      assert_select "input#breakfast_order_user_id[name=?]", "breakfast_order[user_id]"

      assert_select "input#breakfast_order_menu_content_id[name=?]", "breakfast_order[menu_content_id]"
    end
  end
end
