class AddColorToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :color, :string
  end
end
