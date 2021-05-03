class Customer < ActiveRecord::Base
  has_many :accounts
  has_many :banks, through: :accounts

  def open_account kind, amount, bank
    Account.create(
      kind: kind,
      amount: amount,
      bank: bank,
      customer: self
    )
  end

  def total_value
    accounts.pluck(:amount).sum
  end

  def bank_names
    banks.pluck(:name).uniq
  end

  def close_account kind, bank
    account = Account.find_by kind: kind, bank: bank
    account.destroy
  end
end