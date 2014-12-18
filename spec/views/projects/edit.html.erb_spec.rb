require 'rails_helper'

RSpec.describe "projects/edit", :type => :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :format => "MyString",
      :api_key => "MyString",
      :system_capacity => "9.99",
      :module_type => 1,
      :losses => "9.99",
      :array_type => 1,
      :tilt => "9.99",
      :azimuth => "9.99",
      :address => "MyString",
      :lat => "9.99",
      :lon => "9.99",
      :file_id => "MyString",
      :dataset => "MyString",
      :radius => 1,
      :timeframe => "MyString",
      :dc_ac_ratio => "9.99",
      :gcr => "9.99",
      :inv_eff => "9.99",
      :callback => "MyString",
      :ac_annual => 1.5,
      :solrad_annual => 1.5,
      :npv => 1,
      :irr => "9.99",
      :project_score => 1,
      :status => "MyString",
      :user => nil
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_format[name=?]", "project[format]"

      assert_select "input#project_api_key[name=?]", "project[api_key]"

      assert_select "input#project_system_capacity[name=?]", "project[system_capacity]"

      assert_select "input#project_module_type[name=?]", "project[module_type]"

      assert_select "input#project_losses[name=?]", "project[losses]"

      assert_select "input#project_array_type[name=?]", "project[array_type]"

      assert_select "input#project_tilt[name=?]", "project[tilt]"

      assert_select "input#project_azimuth[name=?]", "project[azimuth]"

      assert_select "input#project_address[name=?]", "project[address]"

      assert_select "input#project_lat[name=?]", "project[lat]"

      assert_select "input#project_lon[name=?]", "project[lon]"

      assert_select "input#project_file_id[name=?]", "project[file_id]"

      assert_select "input#project_dataset[name=?]", "project[dataset]"

      assert_select "input#project_radius[name=?]", "project[radius]"

      assert_select "input#project_timeframe[name=?]", "project[timeframe]"

      assert_select "input#project_dc_ac_ratio[name=?]", "project[dc_ac_ratio]"

      assert_select "input#project_gcr[name=?]", "project[gcr]"

      assert_select "input#project_inv_eff[name=?]", "project[inv_eff]"

      assert_select "input#project_callback[name=?]", "project[callback]"

      assert_select "input#project_ac_annual[name=?]", "project[ac_annual]"

      assert_select "input#project_solrad_annual[name=?]", "project[solrad_annual]"

      assert_select "input#project_npv[name=?]", "project[npv]"

      assert_select "input#project_irr[name=?]", "project[irr]"

      assert_select "input#project_project_score[name=?]", "project[project_score]"

      assert_select "input#project_status[name=?]", "project[status]"

      assert_select "input#project_user_id[name=?]", "project[user_id]"
    end
  end
end
