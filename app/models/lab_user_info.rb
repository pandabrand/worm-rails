class LabUserInfo < ApplicationRecord
  self.table_name = 'lab_user_info'
  belongs_to :cdg_user, class_name: 'CdgUser', foreign_key: 'cdg_user_id'
  belongs_to :us_state, class_name: 'UsState', foreign_key: 'fk_alternate_us_state'
  belongs_to :lab_branch, class_name: 'LabBranch', foreign_key: 'fk_branch_id'
  belongs_to :title1, class_name: 'Title1', foreign_key: 'fk_title1_id'
  belongs_to :title2, class_name: 'Title2', foreign_key: 'fk_title2_id'
  belongs_to :title3, class_name: 'Title3', foreign_key: 'fkTitle3ID'
  belongs_to :lab_region, class_name: 'LabRegion', foreign_key: 'fk_region_id'
  belongs_to :lab_area, class_name: 'LabArea', foreign_key: 'fk_area_id'
  belongs_to :roletitle, class_name: 'Roletitle', foreign_key: 'fk_roletitle_id'
  belongs_to :client, class_name: 'Client', foreign_key: 'fk_client_id'

  def full_name
    name_last + ' ' + name_first
  end
end
