class RemoveColumnsFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :image, :string
    remove_column :projects, :photo, :string
    remove_column :projects, :avatar, :string
  end
end
