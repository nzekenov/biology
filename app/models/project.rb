class Project < ActiveRecord::Base
has_attached_file :slide
    has_attached_file :poster
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
    do_not_validate_attachment_file_type :slide
    do_not_validate_attachment_file_type :poster
    do_not_validate_attachment_file_type :avatar
    has_attached_file :diplom, styles: { medium: "300x300>", thumb: "100x100>" }
    do_not_validate_attachment_file_type :diplom

end
