class CopiedCategory < ApplicationRecord
  belongs_to :destination_pk
  belongs_to :copied_pk
end
