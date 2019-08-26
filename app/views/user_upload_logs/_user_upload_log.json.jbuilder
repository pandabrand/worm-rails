json.extract! user_upload_log, :id, :fk_user_id, :type, :upload_date, :created_at, :updated_at
json.url user_upload_log_url(user_upload_log, format: :json)
