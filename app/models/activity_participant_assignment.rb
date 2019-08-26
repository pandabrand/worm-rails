class ActivityParticipantAssignment < ApplicationRecord
  belongs_to :cpkfk_user
  belongs_to :cpkfk_activity_instance
  belongs_to :fk_assistant
end
