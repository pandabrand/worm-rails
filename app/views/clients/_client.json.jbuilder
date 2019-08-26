json.extract! client, :id, :client_name, :client_short_name, :is_active, :created_at, :updated_at
json.url client_url(client, format: :json)
