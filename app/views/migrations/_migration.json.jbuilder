json.extract! migration, :id, :name, :batch, :migration_time, :created_at, :updated_at
json.url migration_url(migration, format: :json)
