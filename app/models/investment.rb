class Investment < ActiveRecord::Base

  validates :minimum_order, numericality: {
    greater_than: 999.99
  }

  belongs_to :user

  def self.per_page
    10
  end

  def self.seed_data!
    7.times do |number|
      interest_rate = 1.50 + (0.50 * number)
      maturity_date = number.years.from_now
      issue_date = Date.today
      offer_end_period = 3.months.from_now
      Investment.create(
        :term => number + 1,
        :interest_rate => interest_rate,
        :original_issue => 100_000,
        :current_outstanding => rand(10_000..50_000),
        :minimum_order => 1_000,
        :denomination => 1_000,
        :maturity_date => maturity_date,
        :issue_date => issue_date,
        :offer_start_period => issue_date,
        :offer_end_period => offer_end_period
      )
    end
  end
end
