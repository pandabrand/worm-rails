class Worm < ApplicationRecord
  self.table_name = 'worm'
  belongs_to :cdg_order, class_name: 'CdgOrder', foreign_key: 'cdg_order_id'
end
