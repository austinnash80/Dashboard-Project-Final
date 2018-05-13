class MailSchedule < ApplicationRecord
  self.primary_key = "mail_id"
  has_one :mailItem
end
