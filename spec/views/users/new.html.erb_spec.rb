require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :company_name => "MyString",
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :phone_number => "MyString",
      :street_address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :email => "MyString",
      :ssn => 1,
      :password_digest => "MyString",
      :role => "MyString",
      :verified_email => false,
      :token => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_company_name[name=?]", "user[company_name]"

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_middle_name[name=?]", "user[middle_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_phone_number[name=?]", "user[phone_number]"

      assert_select "input#user_street_address[name=?]", "user[street_address]"

      assert_select "input#user_city[name=?]", "user[city]"

      assert_select "input#user_state[name=?]", "user[state]"

      assert_select "input#user_zip[name=?]", "user[zip]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_ssn[name=?]", "user[ssn]"

      assert_select "input#user_password_digest[name=?]", "user[password_digest]"

      assert_select "input#user_role[name=?]", "user[role]"

      assert_select "input#user_verified_email[name=?]", "user[verified_email]"

      assert_select "input#user_token[name=?]", "user[token]"
    end
  end
end
