class AddImageUrlToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :image_url, :string
  end
end
