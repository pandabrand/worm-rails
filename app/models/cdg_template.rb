class CdgTemplate < ApplicationRecord
  self.table_name = 'cdg_template'
  belongs_to :ad_size, class_name: 'LabAdSize', foreign_key: 'fk_ad_size'
  belongs_to :mediatype, class_name: 'Mediatype', foreign_key: 'mediatype_id'
  belongs_to :headline, class_name: 'LabHeadline', foreign_key: 'fk_headline'
end
