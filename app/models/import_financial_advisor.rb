class ImportFinancialAdvisor < ApplicationRecord
  belongs_to :branch
  belongs_to :emp
  belongs_to :financial_advisor
end
