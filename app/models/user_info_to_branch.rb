class UserInfoToBranch < ApplicationRecord
  belongs_to :cpkfk_branch
  belongs_to :cpkfk_user_info
end
