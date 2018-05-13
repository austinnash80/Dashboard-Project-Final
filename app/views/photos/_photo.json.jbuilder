json.extract! photo, :id, :name, :data, :file_name, :mime_type, :created_at, :updated_at
json.url photo_url(photo, format: :json)
