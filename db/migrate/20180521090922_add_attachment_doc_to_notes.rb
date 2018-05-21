class AddAttachmentDocToNotes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :notes do |t|
      t.attachment :doc
    end
  end

  def self.down
    remove_attachment :notes, :doc
  end
end
