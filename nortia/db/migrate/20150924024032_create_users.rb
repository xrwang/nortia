class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.float :location_long
      t.float :location_lat
      t.integer :zipcode
      t.string :username
      t.integer :age
      t.string :availability

      t.timestamps null: false
    end
  end
end
