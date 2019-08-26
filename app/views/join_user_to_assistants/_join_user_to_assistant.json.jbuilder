json.extract! join_user_to_assistant, :id, :cpfk_user_id, :cpfk_assistant_id, :created_at, :updated_at
json.url join_user_to_assistant_url(join_user_to_assistant, format: :json)
