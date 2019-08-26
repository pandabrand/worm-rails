class AdMatrixCategory < ApplicationRecord
  belongs_to :fk_parent_category
  belongs_to :fk_featured_headline
  belongs_to :fk_latest_template
  belongs_to :copied_headline
end
