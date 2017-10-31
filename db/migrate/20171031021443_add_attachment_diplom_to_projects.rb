class AddAttachmentDiplomToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :diplom
    end
  end

  def self.down
    remove_attachment :projects, :diplom
  end
end
