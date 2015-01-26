require 'rails_helper'

RSpec.describe "dinner_orders/edit", :type => :view do
  before(:each) do
    @dinner_order = assign(:dinner_order, DinnerOrder.create!(
      :user => nil,
      :menu_content => nil
    ))
  end

  it "renders the edit dinner_order form" do
    render

    assert_select "form[action=?][method=?]", dinner_order_path(@dinner_order), "post" do

      assert_select "input#dinner_order_user_id[name=?]", "dinner_order[user_id]"

      assert_select "input#dinner_order_menu_content_id[name=?]", "dinner_order[menu_content_id]"
    end
  end
end
