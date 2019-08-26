json.extract! order_status_tracker, :id, :fk_order_status_id, :date_submitted, :fk_order_id, :created_at, :updated_at
json.url order_status_tracker_url(order_status_tracker, format: :json)
