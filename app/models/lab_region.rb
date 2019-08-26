class LabRegion < ApplicationRecord
  self.table_name = 'lab_region'
  has_many :lab_areas

  def region_map
    region_id + '-' + name
  end
end
