class WorkFlowActivityDefinition < ApplicationRecord
  belongs_to :fk_next_activity
  belongs_to :fk_parent_process
end
