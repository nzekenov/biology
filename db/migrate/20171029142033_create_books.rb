class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.attachment :file

      t.timestamps null: false
    end
  end
end
