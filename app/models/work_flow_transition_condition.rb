class WorkFlowTransitionCondition < ApplicationRecord
  belongs_to :cpkfk_predecessor
  belongs_to :cpkfk_successor
end
