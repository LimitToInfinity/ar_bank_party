class CreateBanks < ActiveRecord::Migration[6.1]
  def change
    create_table :banks do |table|
      table.string :name
    end
  end
end
