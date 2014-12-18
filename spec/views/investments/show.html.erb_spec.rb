require 'rails_helper'

RSpec.describe "investments/show", :type => :view do
  before(:each) do
    @investment = assign(:investment, Investment.create!(
      :term => 1,
      :interest_rate => "9.99",
      :original_issue => 2,
      :current_outstanding => 3,
      :minimum_order => 4,
      :denomination => 5,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(//)
  end
end
