require 'rails_helper'

RSpec.describe "days/edit", :type => :view do
  before(:each) do
    @day = assign(:day, Day.create!(
      :day => "MyString"
    ))
  end

  it "renders the edit day form" do
    render

    assert_select "form[action=?][method=?]", day_path(@day), "post" do

      assert_select "input#day_day[name=?]", "day[day]"
    end
  end
end
