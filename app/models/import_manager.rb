class ImportManager < ApplicationRecord
  belongs_to :area
  belongs_to :branch
  belongs_to :emp
  belongs_to :region
end
