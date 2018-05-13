class AddAttachmentImageToMailItems < ActiveRecord::Migration[5.1]
  def self.up
    change_table :mail_items do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :mail_items, :image
  end
end
