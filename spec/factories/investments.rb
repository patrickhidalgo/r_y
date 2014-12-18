FactoryGirl.define do
  factory :investment do
    term 1
interest_rate "9.99"
original_issue 1
current_outstanding 1
minimum_order 1
denomination 1
maturity_date "2014-12-17"
issue_date "2014-12-17"
offer_start_period "2014-12-17"
offer_end_period "2014-12-17"
user nil
  end

end
