class MailItem < ApplicationRecord
  belongs_to :mailSchedule, foreign_key: 'mail_id'
    # has_attached_file :image, :styles => { :medium => "200x200>" }
    #                   # :url => "/assets/mailitems/:id/:style/:basename.:extension",
    #                   # :path => ":rails_root/public/assets/mailitems/:id/:style/:basename.:extension"
    # validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :image
    validates_attachment :image, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)}

    has_attached_file :data
    validates_attachment :data, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)}

end
