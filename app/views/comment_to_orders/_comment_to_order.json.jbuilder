json.extract! comment_to_order, :id, :cpkfk_comment_id, :cpkfk_order_id, :created_at, :updated_at
json.url comment_to_order_url(comment_to_order, format: :json)
