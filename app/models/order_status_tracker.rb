class OrderStatusTracker < ApplicationRecord
  belongs_to :fk_order_status
  belongs_to :fk_order
end
