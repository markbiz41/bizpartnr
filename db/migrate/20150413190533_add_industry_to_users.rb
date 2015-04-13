class AddIndustryToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :industry, index: true
    add_foreign_key :users, :industries
    remove_column :users, :industry
  end
end
