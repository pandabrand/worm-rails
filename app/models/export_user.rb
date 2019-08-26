class ExportUser < ApplicationRecord
  belongs_to :emp
  belongs_to :branch
  belongs_to :region
  belongs_to :fk_user
  belongs_to :financial_advisor
  belongs_to :area
end
