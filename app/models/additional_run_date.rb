class AdditionalRunDate < ApplicationRecord
  belongs_to :pk
  belongs_to :fk_order
end
