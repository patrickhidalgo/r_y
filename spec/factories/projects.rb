FactoryGirl.define do
  factory :project do
    format ['json', 'xml'].sample
    api_key { 'mOwXKaie0UZB8tihBfZj5b2YpYkETjc33Yl5J1EM' }
    system_capacity { rand(1..10) }
    module_type { rand(0..2) }
    losses { rand(-5..99) }
    array_type { rand(0..4) }
    tilt { rand(0..99) }
    azimuth { rand(0..360) }
    address { "#{Faker::Address.street_address},
            #{Faker::Address.city}, #{Faker::Address.state_abbr}
    #{Faker::Address.zip}"}
    lat { Faker::Address.latitude.to_f.round(12) }
    lon { Faker::Address.longitude.to_f.round(12) }
    file_id 94018
    dataset ['tmy2', 'tmy3', 'intl'].sample
    radius 100
    timeframe ['hourly', 'monthly'].sample
    dc_ac_ratio 1.1
    gcr { rand(0..3) }
    inv_eff { rand(90..99.5) }
    callback { 'JSON' }
    ac_annual { rand(1_000..10_000) }
    solrad_annual { rand(1_000..10_000) }
    npv { rand(-20_000..20_000) }
    irr { rand(-5..10) }
    project_score { rand(0..100) }
    status ['Funded', 'Not Funded'].sample
    user nil
  end
end
