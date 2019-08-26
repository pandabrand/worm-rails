json.extract! cdg_nav_menu_item, :id, :display_string, :fk_parent_nav_menu_item_id, :is_active, :page_name, :sort_order, :display_image_filename, :created_at, :updated_at
json.url cdg_nav_menu_item_url(cdg_nav_menu_item, format: :json)
