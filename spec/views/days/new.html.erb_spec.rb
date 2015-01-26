require 'rails_helper'

RSpec.describe "days/new", :type => :view do
  before(:each) do
    assign(:day, Day.new(
      :day => "MyString"
    ))
  end

  it "renders new day form" do
    render

    assert_select "form[action=?][method=?]", days_path, "post" do

      assert_select "input#day_day[name=?]", "day[day]"
    end
  end
end
