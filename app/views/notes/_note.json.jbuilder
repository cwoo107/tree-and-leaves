json.extract! note, :id, :title, :user_id, :folderable_id, :folderable_type, :created_at, :updated_at
json.url note_url(note, format: :json)
