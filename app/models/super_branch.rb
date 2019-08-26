class SuperBranch < ApplicationRecord
  belongs_to :lab_branch, class_name: 'LabBranch', foreign_key: 'cost_center', primary_key: 'branch_id'
end
