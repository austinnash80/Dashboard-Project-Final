class MailItem < ApplicationRecord
  belongs_to :mailSchedule, foreign_key: 'mail_id'
    # has_attached_file :image, :styles => { :medium => "200x200>" }
    #                   # :url => "/assets/mailitems/:id/:style/:basename.:extension",
    #                   # :path => ":rails_root/public/assets/mailitems/:id/:style/:basename.:extension"
    # validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :image,
                      :path => "/:basename.:extension"
                      # :AWS_REGION => 'us-east-2'
                      :s3_domain_url => "******.s3.us-east-2.amazonaws.com",
    validates_attachment :image, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)}

    has_attached_file :data
    validates_attachment :data, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)}


# https://stackoverflow.com/questions/12939903/allowing-user-to-download-file-from-s3-storage
    # has_attached_file :creative,
    #                 :styles => { :thumb => "150x150", :custcreative => "250x75" },
    #                 :path => ":attachment/:id/:style.:extension",
    #                 :s3_domain_url => "******.s3.amazonaws.com",
    #                 :storage => :s3,
    #                 :s3_credentials => Rails.root.join("config/s3.yml"),
    #                 :bucket => '*****',
    #                 :s3_permissions => :public_read,
    #                 :s3_protocol => "http",
    #                 :convert_options => { :all => "-auto-orient" },
    #                 :encode => 'utf8'
end
