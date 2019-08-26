class JoinUserToAssistant < ApplicationRecord
  belongs_to :cpfk_user
  belongs_to :cpfk_assistant
end
