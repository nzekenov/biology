class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :title
      t.attachment :slide
      t.attachment :avatar
      t.attachment :poster

      t.timestamps null: false
    end
  end
end
