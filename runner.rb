require_relative 'config/environment'

# CHALLENGE!
# Make a M:N between banks - customers
# banks and customers have a name (string)
# Join table is called accounts
# accounts have a kind (e.g. 'checking')
# accounts also have an amount (integer)
# set up your database
# set up your relationships
# at least 3 seeds of each

binding.pry

# return the first account instance in the database
Account.first
# return the account of id 3
Account.find 3
# return the account with the amount of 5000
Account.find_by_amount 5000
Account.find_by amount: 5000
# return all the accounts over amount of 1500
Account.where amount: 1500 # all accounts of 1500 amount
Account.where 'amount > 1500' # all acounts over 1500 amount

Customer.where 'name LIKE ?', '%a%' # all customers with the letter a in their name

Customer.pluck :name
Account.pluck :amount
Account.pluck(:kind).uniq

# Next Challenges:

### ACCOUNT CLASS

# Account#print_details
# instance method. prints "{customer name} has a {kind} account with ${amount} at {bank name}"

# Account.over_two_thousand
# class method. returns all the accounts that have over 2,000 amount

### CUSTOMER CLASS

# Customer#open_account(kind, amount, bank)
# instance method. takes in a kind string, amount integer, and bank instance. creates an Account instance for that customer.

# Customer#total_value
# instance method. returns one integer which is the total amount of money that customer has from all accounts.

# Customer#bank_names
# instance method. returns a unique array of bank names that customer has an account with (unique meaning can only list each bank name once).

# Customer#close_account(kind, bank)
# instance method. takes in the account kind (string) and bank instance, and deletes the corresponding Account instance for that customer.

### BANK CLASS

# Bank#total_value
# instance method. returns the total amount of money from all accounts of that bank.

# Bank#account_kinds
# returns a unique lst of all kinds of accounts in that bank (ie. ['checking', ...])

# Bank.most_accounts
# class method. returns the bank with the most accounts.
