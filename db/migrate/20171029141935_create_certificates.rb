class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.attachment :file

      t.timestamps null: false
    end
  end
end
