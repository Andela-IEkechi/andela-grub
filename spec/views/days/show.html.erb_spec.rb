require 'rails_helper'

RSpec.describe "days/show", :type => :view do
  before(:each) do
    @day = assign(:day, Day.create!(
      :day => "Day"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Day/)
  end
end
