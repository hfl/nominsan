json.extract! subject_type, :id, :name, :code, :about, :created_at, :updated_at
json.url subject_type_url(subject_type, format: :json)
