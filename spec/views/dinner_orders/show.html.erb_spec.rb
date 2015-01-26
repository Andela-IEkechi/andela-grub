require 'rails_helper'

RSpec.describe "dinner_orders/show", :type => :view do
  before(:each) do
    @dinner_order = assign(:dinner_order, DinnerOrder.create!(
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
