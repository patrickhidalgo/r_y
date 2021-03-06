json.array!(@projects) do |project|
  json.extract! project, :id, :format, :api_key, :system_capacity, :module_type, :losses, :array_type, :tilt, :azimuth, :address, :lat, :lon, :file_id, :dataset, :radius, :timeframe, :dc_ac_ratio, :gcr, :inv_eff, :callback, :ac_annual, :solrad_annual, :npv, :irr, :project_score, :status, :user_id
  json.url project_url(project, format: :json)
end
