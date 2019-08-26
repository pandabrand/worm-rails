class LabHeadline < ApplicationRecord
  self.table_name = 'lab_headline'

  def full_headline
    code + ' ' + title
  end
end
