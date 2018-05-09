json.extract! note, :id, :title, :note, :due, :due_date, :done, :important, :type_one, :type_two, :type_three, :extra_boolean, :extra_string, :extra_integer, :user_id, :created_at, :updated_at
json.url note_url(note, format: :json)
