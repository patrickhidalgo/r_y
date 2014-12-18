require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :company_name => "Company Name",
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :phone_number => "Phone Number",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip => 1,
        :email => "Email",
        :ssn => 2,
        :password_digest => "Password Digest",
        :role => "Role",
        :verified_email => false,
        :token => "Token"
      ),
      User.create!(
        :company_name => "Company Name",
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :phone_number => "Phone Number",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip => 1,
        :email => "Email",
        :ssn => 2,
        :password_digest => "Password Digest",
        :role => "Role",
        :verified_email => false,
        :token => "Token"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
  end
end
