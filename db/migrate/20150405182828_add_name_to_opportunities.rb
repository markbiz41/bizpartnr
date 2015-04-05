class AddNameToOpportunities < ActiveRecord::Migration
  def change
    add_column :opportunities, :name, :string
  end
end
