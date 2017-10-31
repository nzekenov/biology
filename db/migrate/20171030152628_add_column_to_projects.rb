class AddColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :avatar, :attachment
  end
end
