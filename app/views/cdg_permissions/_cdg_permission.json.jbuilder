json.extract! cdg_permission, :id, :agent_type, :fk_user_agent_id, :fk_function_resource_id, :permission, :resource_type, :is_active, :fk_role_agent_id, :fk_function_group_resource_id, :fk_nav_menu_item_resource_id, :fk_permission_type_id, :created_at, :updated_at
json.url cdg_permission_url(cdg_permission, format: :json)
