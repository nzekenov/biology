class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :name
      t.attachment :file

      t.timestamps null: false
    end
  end
end
