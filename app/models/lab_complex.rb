class LabComplex < ApplicationRecord
  self.table_name = 'lab_complex'
  belongs_to :lab_area, class_name: 'LabArea', foreign_key: 'fk_area_id'
  has_many :lab_branches
end
