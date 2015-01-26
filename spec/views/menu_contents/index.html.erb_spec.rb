require 'rails_helper'

RSpec.describe "menu_contents/index", :type => :view do
  before(:each) do
    assign(:menu_contents, [
      MenuContent.create!(
        :day => nil,
        :food => nil
      ),
      MenuContent.create!(
        :day => nil,
        :food => nil
      )
    ])
  end

  it "renders a list of menu_contents" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
