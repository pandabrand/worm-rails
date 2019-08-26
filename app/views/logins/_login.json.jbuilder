json.extract! login, :id, :login_date, :fk_user_id, :action, :created_at, :updated_at
json.url login_url(login, format: :json)
