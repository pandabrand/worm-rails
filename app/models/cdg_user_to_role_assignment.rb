class CdgUserToRoleAssignment < ApplicationRecord
  self.table_name = 'cdg_user_to_role_assignment'
  belongs_to :cdg_role, class_name: 'CdgRole', foreign_key: 'cpkfk_role_id'
  belongs_to :cdg_user, class_name: 'CdgUser', foreign_key: 'cpkfk_user_id'
end
