class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :expertise_desired
      t.string :partnership_opportunity
      t.references :industry, index: true
      t.decimal :compensation
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :opportunities, :industries
    add_foreign_key :opportunities, :users
  end
end
