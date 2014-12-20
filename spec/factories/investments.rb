FactoryGirl.define do
  original_issue = rand(5..10) * 100_000
  current_outstanding = rand(1..5) * 10_000
  factory :investment do
    term { rand(1..7) }
    interest_rate { 1.50 + (0.50 * term) }
    original_issue { original_issue }
    current_outstanding { current_outstanding }
    minimum_order 1000
    denomination 1000
    maturity_date { term.years.from_now }
    issue_date { Date.today }
    offer_start_period { issue_date }
    offer_end_period { 3.months.from_now }
    user nil
  end
end

