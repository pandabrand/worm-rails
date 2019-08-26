class UserComment < ApplicationRecord
  belongs_to :fk_creator
  belongs_to :fk_user
end
