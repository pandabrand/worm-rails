json.extract! user_comment, :id, :fk_creator_id, :fk_user_id, :value, :date_created, :created_at, :updated_at
json.url user_comment_url(user_comment, format: :json)
