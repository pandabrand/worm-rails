class CdgUser < ApplicationRecord
  self.table_name = 'cdg_user'
  has_one :lab_user_info
  has_many :cdg_orders
  has_many :cdg_user_to_role_assignments
  has_many :cdg_roles, through: :cdg_user_to_role_assignments
end
