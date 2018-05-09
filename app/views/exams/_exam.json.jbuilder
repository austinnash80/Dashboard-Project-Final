json.extract! exam, :id, :exam_id, :uid, :des, :start_date, :complete_date, :seq_number, :seq_version, :seq_title, :score, :rating, :created_at, :updated_at
json.url exam_url(exam, format: :json)
