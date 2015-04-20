class CreateBoutiques < ActiveRecord::Migration
  def change
    create_table :boutiques do |t|
      t.string :name
      t.integer :owner_id
      t.string :website
      t.string :twitter
      t.string :facebook
      t.string :instagram
      t.string :email
      t.string :city
      t.string :state
      t.string :schedule
      t.string :description
      t.string :category

      t.timestamps null: false
    end
  end
end
