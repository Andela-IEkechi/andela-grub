require 'rails_helper'

RSpec.describe "foods/show", :type => :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      :item => "MyText",
      :minimum_amount => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
