Account.destroy_all # needs to come first
Bank.destroy_all
Customer.destroy_all

# .create == .new && .save

bank_of_america = Bank.create name: 'Bank of America'
wells_fargo = Bank.create name: 'Wells Fargo'
local_credit_union = Bank.create name: 'Local Credit Union'

joe = Customer.create name: 'Joe'
stacey = Customer.create name: 'Stacey'
annette = Customer.create name: 'Annette'

Account.create(
  kind: 'checking',
  amount: 1000,
  bank: bank_of_america,
  customer: joe
)
Account.create(
  kind: 'saving',
  amount: 2000,
  bank: bank_of_america,
  customer: joe
)
Account.create(
  kind: 'checking',
  amount: 5000,
  bank: wells_fargo,
  customer: stacey
)
Account.create(
  kind: 'saving',
  amount: 8000,
  bank: wells_fargo,
  customer: stacey
)
Account.create(
  kind: 'saving',
  amount: 20000,
  bank: local_credit_union,
  customer: stacey
)
Account.create(
  kind: 'checking',
  amount: 1500,
  bank: local_credit_union,
  customer: annette
)
