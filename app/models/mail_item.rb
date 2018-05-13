class MailItem < ApplicationRecord
  belongs_to :mailSchedule, foreign_key: 'mail_id'
    has_attached_file :image, :styles => { :medium => "200x200>" }
                      # :url => "/assets/mailitems/:id/:style/:basename.:extension",
                      # :path => ":rails_root/public/assets/mailitems/:id/:style/:basename.:extension"
    validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']


end
