class CreateVibes < ActiveRecord::Migration
  def change
    create_table :vibes do |t|
      t.string :credit_code
      t.text :description
      t.integer :hours

      t.timestamps null: false
    end
  end
end
