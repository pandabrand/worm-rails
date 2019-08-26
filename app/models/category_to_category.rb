class CategoryToCategory < ApplicationRecord
  belongs_to :cp_fk_copy_category
  belongs_to :cp_fk_destination_category
end
