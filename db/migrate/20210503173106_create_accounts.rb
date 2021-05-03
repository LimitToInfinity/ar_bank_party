class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |table|
      table.string :kind
      table.integer :amount
      table.references :bank
      table.references :customer
    end
  end
end
