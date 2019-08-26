class Comment < ApplicationRecord
  belongs_to :fk_creator
  belongs_to :fk_assistant
end
