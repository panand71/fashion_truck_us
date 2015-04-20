class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :phone

      t.timestamps null: false
    end
  end
end
