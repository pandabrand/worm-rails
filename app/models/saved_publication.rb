class SavedPublication < ApplicationRecord
  belongs_to :fk_creator
  belongs_to :fk_publication_type
end
