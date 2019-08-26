class AdLibraryNode < ApplicationRecord
  belongs_to :fk_latest_template
  belongs_to :fk_parent_node
  belongs_to :fk_template
end
