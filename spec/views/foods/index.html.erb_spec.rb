require 'rails_helper'

RSpec.describe "foods/index", :type => :view do
  before(:each) do
    assign(:foods, [
      Food.create!(
        :item => "MyText",
        :minimum_amount => 1
      ),
      Food.create!(
        :item => "MyText",
        :minimum_amount => 1
      )
    ])
  end

  it "renders a list of foods" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
