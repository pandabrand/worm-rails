class AdditionalRunDate < ApplicationRecord
  self.table_name = 'additional_run_date'
  belongs_to :cdg_order, class_name: 'CdgOrder', foreign_key: 'fk_order_id'
end
