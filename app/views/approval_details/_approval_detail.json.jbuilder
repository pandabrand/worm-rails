json.extract! approval_detail, :id, :fk_role_id, :comments, :date_created, :fk_order_id, :fk_order_item_id, :fk_user_id, :fk_work_activity_instance_id, :media_id, :order_number, :status_description, :user_name, :user_role, :fk_assistant_id, :created_at, :updated_at
json.url approval_detail_url(approval_detail, format: :json)
