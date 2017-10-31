class AddColumnsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :actual, :text
    add_column :projects, :hypothesis, :text
    add_column :projects, :aim, :text
    add_column :projects, :new, :text
    add_column :projects, :part, :text
    add_column :projects, :conclusion, :text
  end
end
