class RemoveColorFromSkills < ActiveRecord::Migration
  def change
    remove_column :skills, :color, :string
  end
end
