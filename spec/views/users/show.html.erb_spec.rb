require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Token/)
  end
end
