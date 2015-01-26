require 'rails_helper'

RSpec.describe "orders/show", :type => :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :user => nil,
      :menu_content => nil,
      :amount => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
