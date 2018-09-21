json.extract! format_mime, :id, :name, :code, :about, :created_at, :updated_at
json.url format_mime_url(format_mime, format: :json)
