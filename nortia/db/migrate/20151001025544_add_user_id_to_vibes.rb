class AddUserIdToVibes < ActiveRecord::Migration
  def change
    add_column :vibes, :user_id, :integer
  end
end
