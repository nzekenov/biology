class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.attachment :image

      t.timestamps null: false
    end
  end
end
