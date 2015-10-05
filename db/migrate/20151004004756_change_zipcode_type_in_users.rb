class ChangeZipcodeTypeInUsers < ActiveRecord::Migration
  def up
      remove_column :users, :zipcode
      add_column :users, :zipcode, :string
    end

    def down
      remove_column :users, :zipcode
      add_column :users, :zipcode, :integer
    end
end
