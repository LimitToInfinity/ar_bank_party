class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |table|
      table.string :name
    end
  end
end
