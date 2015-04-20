class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :birthday
      t.string :loyalty_number
      t.string :favorite_trucks
      t.string :favorite_fashion
      t.integer :boutique_id

      t.timestamps null: false
    end
  end
end
