class LabArea < ApplicationRecord
  self.table_name = 'lab_area'
  belongs_to :lab_region, class_name: 'LabRegion', foreign_key: 'fk_region_id'
  has_many :lab_complexes
  has_many :lab_branches
end
