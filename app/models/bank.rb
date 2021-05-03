class Bank < ActiveRecord::Base
  has_many :accounts
  has_many :customers, through: :accounts

  def total_value
    accounts.pluck(:amount).sum
  end

  def account_kinds
    accounts.pluck(:kind).join(', ')
  end

  def self.most_accounts
    all.max_by { |bank| bank.accounts.length }
  end
end