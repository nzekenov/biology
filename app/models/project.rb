class Project < ActiveRecord::Base
    has_attached_file :poster
    has_attached_file :avatar
    has_attached_file :slide
    do_not_validate_attachment_file_type :poster
    do_not_validate_attachment_file_type :avatar
    do_not_validate_attachment_file_type :slide
    has_many :project_attachments
   accepts_nested_attributes_for :project_attachments
   
end
