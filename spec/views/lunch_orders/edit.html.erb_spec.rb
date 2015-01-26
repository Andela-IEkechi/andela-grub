require 'rails_helper'

RSpec.describe "lunch_orders/edit", :type => :view do
  before(:each) do
    @lunch_order = assign(:lunch_order, LunchOrder.create!(
      :user => nil,
      :menu_content => nil
    ))
  end

  it "renders the edit lunch_order form" do
    render

    assert_select "form[action=?][method=?]", lunch_order_path(@lunch_order), "post" do

      assert_select "input#lunch_order_user_id[name=?]", "lunch_order[user_id]"

      assert_select "input#lunch_order_menu_content_id[name=?]", "lunch_order[menu_content_id]"
    end
  end
end
