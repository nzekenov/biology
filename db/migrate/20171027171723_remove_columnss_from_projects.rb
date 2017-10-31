class RemoveColumnssFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :image, :string
    remove_column :projects, :photo_file_name, :string
    remove_column :projects, :photo_content_type, :string
    remove_column :projects, :photo_file_size, :integer
    remove_column :projects, :photo_updated_at, :datetime
    remove_column :projects, :avatar_file_name, :string
    remove_column :projects, :avatar_content_type, :string
    remove_column :projects, :avatar_file_size, :integer
    remove_column :projects, :avatar_updated_at, :datetime
  end
end
