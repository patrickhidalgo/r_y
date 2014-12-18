require 'rails_helper'

RSpec.describe "projects/show", :type => :view do
  before(:each) do
    @project = assign(:project, Project.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Format/)
    expect(rendered).to match(/Api Key/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/File/)
    expect(rendered).to match(/Dataset/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Timeframe/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Callback/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
  end
end
