require 'rails_helper'

RSpec.describe "breakfast_orders/show", :type => :view do
  before(:each) do
    @breakfast_order = assign(:breakfast_order, BreakfastOrder.create!(
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
