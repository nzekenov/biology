class AddFileToDoc < ActiveRecord::Migration
  def change
    add_column :docs, :file, :attachment
  end
end
