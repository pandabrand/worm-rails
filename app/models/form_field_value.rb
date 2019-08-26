class FormFieldValue < ApplicationRecord
  belongs_to :fk_template_form_field
  belongs_to :fk_order
  belongs_to :fk_user
  belongs_to :fk_portrait_image
  belongs_to :fk_title
  belongs_to :fk_title2
end
