class Note < ApplicationRecord
  belongs_to :user

  has_attached_file :doc,
                    :url =>':s3_domain_url',
                    :path => "/:basename.:extension"
  validates_attachment :doc, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)}
end
