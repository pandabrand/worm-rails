class CdgRole < ApplicationRecord
  self.table_name = 'cdg_role'
  has_many :cdg_user_to_role_assignments
  has_many :cdg_users, through: :cdg_user_to_role_assignments
end
