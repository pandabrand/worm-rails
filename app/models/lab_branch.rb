class LabBranch < ApplicationRecord
  self.table_name = 'lab_branch'
  belongs_to :us_state, class_name: 'UsState', foreign_key: 'fk_us_state_id'
  belongs_to :lab_area, class_name: 'LabArea', foreign_key: 'fk_area_id'
  belongs_to :lab_complex, class_name: 'LabComplex', foreign_key: 'fk_complex_id'
  has_one :super_branch, foreign_key: 'cost_center', primary_key: 'branch_id'

  def ilm_dept
    lab_complex.complex_id + '-' + branch_id
  end

  def ilm_branc_no
    'BR' + super_branch.branch.to_s
  end

  def ilm_region
    super_branch.region.to_s + ' - ' + super_branch.region_name.strip
  end
end
