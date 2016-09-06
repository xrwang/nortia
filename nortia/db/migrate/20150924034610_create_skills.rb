class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :maincat
      t.string :subcat
      t.string :subsubcat
      t.integer :experience
      t.boolean :need
      t.boolean :offer

      t.timestamps null: false
    end
  end
end
