class CommentToOrder < ApplicationRecord
  belongs_to :cpkfk_comment
  belongs_to :cpkfk_order
end
