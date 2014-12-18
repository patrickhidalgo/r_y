json.array!(@investments) do |investment|
  json.extract! investment, :id, :term, :interest_rate, :original_issue, :current_outstanding, :minimum_order, :denomination, :maturity_date, :issue_date, :offer_start_period, :offer_end_period, :user_id
  json.url investment_url(investment, format: :json)
end
