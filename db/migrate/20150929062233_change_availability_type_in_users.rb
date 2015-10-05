class ChangeAvailabilityTypeInUsers < ActiveRecord::Migration
  def up
      remove_column :users, :availability
      add_column :users, :availability, :text, array: true, default: []
    end

    def down
      remove_column :users, :availability
      add_column :users, :availability, :string
    end
end
