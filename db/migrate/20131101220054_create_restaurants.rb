class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.string :price
      t.string :location

      t.timestamps
    end
  end
end
