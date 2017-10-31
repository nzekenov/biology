class ProjectAttachment < ActiveRecord::Base
    mount_uploader :diplom, DiplomUploader
   belongs_to :project
end
