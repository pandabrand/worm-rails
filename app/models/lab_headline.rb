class LabHeadline < ApplicationRecord
  self.table_name = 'lab_headline'

  def full_headline
    code + ' ' + title
  end

  def color
    headlineColorTypeID == 1 ? 'B&W' : 'Color'
  end

  def code_color_title
    full_headline + color
  end
end
