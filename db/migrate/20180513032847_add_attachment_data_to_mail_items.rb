class AddAttachmentDataToMailItems < ActiveRecord::Migration[5.1]
  def self.up
    change_table :mail_items do |t|
      t.attachment :data
    end
  end

  def self.down
    remove_attachment :mail_items, :data
  end
end

# command line: rails generate paperclip mail_item data
