json.extract! mail_item, :id, :mail_id, :title, :quantity, :data_name, :art_name, :msi_note, :note_1, :note_2, :complete, :boolean_1, :integer_1, :created_at, :updated_at
json.url mail_item_url(mail_item, format: :json)
