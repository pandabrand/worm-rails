class UsState < ApplicationRecord
  self.table_name = 'us_state'
  has_many :lab_user_info
end
