require 'rails_helper'

RSpec.describe "lunch_orders/show", :type => :view do
  before(:each) do
    @lunch_order = assign(:lunch_order, LunchOrder.create!(
      :user => nil,
      :menu_content => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
