class CdgPermission < ApplicationRecord
  belongs_to :fk_user_agent
  belongs_to :fk_function_resource
  belongs_to :fk_role_agent
  belongs_to :fk_function_group_resource
  belongs_to :fk_nav_menu_item_resource
  belongs_to :fk_permission_type
end
