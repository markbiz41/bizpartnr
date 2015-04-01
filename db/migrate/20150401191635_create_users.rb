class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :industry
      t.string :position
      t.string :city
      t.text :contact_info

      t.timestamps null: false
    end
  end
end
