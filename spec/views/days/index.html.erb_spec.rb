require 'rails_helper'

RSpec.describe "days/index", :type => :view do
  before(:each) do
    assign(:days, [
      Day.create!(
        :day => "Day"
      ),
      Day.create!(
        :day => "Day"
      )
    ])
  end

  it "renders a list of days" do
    render
    assert_select "tr>td", :text => "Day".to_s, :count => 2
  end
end
