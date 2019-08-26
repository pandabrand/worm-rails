json.extract! cdg_user, :id, :date_created, :date_modified, :password, :username, :is_active, :fk_user_info_id, :date_last_logged_in, :skip_login_profile_page, :new_login, :fk_user_id, :created_at, :updated_at
json.url cdg_user_url(cdg_user, format: :json)
