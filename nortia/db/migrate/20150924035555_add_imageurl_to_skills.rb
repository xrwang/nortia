class AddImageurlToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :imageurl, :string
  end
end
