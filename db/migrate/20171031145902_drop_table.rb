class DropTable < ActiveRecord::Migration
  def change
    drop_table :diploms
    drop_table :projects
  end
end
