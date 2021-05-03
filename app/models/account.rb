class Account < ActiveRecord::Base
  belongs_to(:bank)
  belongs_to :customer

  def print_details
    "#{customer.name} has a #{kind} account with $#{amount} at #{bank.name}"
  end

  def self.over_two_thousand
    where('amount > 2000')
  end
end