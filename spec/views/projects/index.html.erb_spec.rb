require 'rails_helper'

RSpec.describe "projects/index", :type => :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :format => "Format",
        :api_key => "Api Key",
        :system_capacity => "9.99",
        :module_type => 1,
        :losses => "9.99",
        :array_type => 2,
        :tilt => "9.99",
        :azimuth => "9.99",
        :address => "Address",
        :lat => "9.99",
        :lon => "9.99",
        :file_id => "File",
        :dataset => "Dataset",
        :radius => 3,
        :timeframe => "Timeframe",
        :dc_ac_ratio => "9.99",
        :gcr => "9.99",
        :inv_eff => "9.99",
        :callback => "Callback",
        :ac_annual => 1.5,
        :solrad_annual => 1.5,
        :npv => 4,
        :irr => "9.99",
        :project_score => 5,
        :status => "Status",
        :user => nil
      ),
      Project.create!(
        :format => "Format",
        :api_key => "Api Key",
        :system_capacity => "9.99",
        :module_type => 1,
        :losses => "9.99",
        :array_type => 2,
        :tilt => "9.99",
        :azimuth => "9.99",
        :address => "Address",
        :lat => "9.99",
        :lon => "9.99",
        :file_id => "File",
        :dataset => "Dataset",
        :radius => 3,
        :timeframe => "Timeframe",
        :dc_ac_ratio => "9.99",
        :gcr => "9.99",
        :inv_eff => "9.99",
        :callback => "Callback",
        :ac_annual => 1.5,
        :solrad_annual => 1.5,
        :npv => 4,
        :irr => "9.99",
        :project_score => 5,
        :status => "Status",
        :user => nil
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Format".to_s, :count => 2
    assert_select "tr>td", :text => "Api Key".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
    assert_select "tr>td", :text => "Dataset".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Timeframe".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Callback".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
