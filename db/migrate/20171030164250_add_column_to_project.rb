class AddColumnToProject < ActiveRecord::Migration
  def change
    add_column :projects, :diplom, :attachment
  end
end
