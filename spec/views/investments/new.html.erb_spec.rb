require 'rails_helper'

RSpec.describe "investments/new", :type => :view do
  before(:each) do
    assign(:investment, Investment.new(
      :term => 1,
      :interest_rate => "9.99",
      :original_issue => 1,
      :current_outstanding => 1,
      :minimum_order => 1,
      :denomination => 1,
      :user => nil
    ))
  end

  it "renders new investment form" do
    render

    assert_select "form[action=?][method=?]", investments_path, "post" do

      assert_select "input#investment_term[name=?]", "investment[term]"

      assert_select "input#investment_interest_rate[name=?]", "investment[interest_rate]"

      assert_select "input#investment_original_issue[name=?]", "investment[original_issue]"

      assert_select "input#investment_current_outstanding[name=?]", "investment[current_outstanding]"

      assert_select "input#investment_minimum_order[name=?]", "investment[minimum_order]"

      assert_select "input#investment_denomination[name=?]", "investment[denomination]"

      assert_select "input#investment_user_id[name=?]", "investment[user_id]"
    end
  end
end
