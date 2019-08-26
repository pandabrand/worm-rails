class PortraitImage < ApplicationRecord
  belongs_to :fk_order
  belongs_to :fk_userinfo
end
