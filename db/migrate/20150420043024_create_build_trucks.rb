class CreateBuildTrucks < ActiveRecord::Migration
  def change
    create_table :build_trucks do |t|
      t.string :project_name
      t.integer :owner_id
      t.string :size
      t.string :flooring
      t.string :walls
      t.string :lighting
      t.string :configuration
      t.string :shelves
      t.string :rods
      t.string :outside_color

      t.timestamps null: false
    end
  end
end
