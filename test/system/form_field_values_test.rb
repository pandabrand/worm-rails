require "application_system_test_case"

class FormFieldValuesTest < ApplicationSystemTestCase
  setup do
    @form_field_value = form_field_values(:one)
  end

  test "visiting the index" do
    visit form_field_values_url
    assert_selector "h1", text: "Form Field Values"
  end

  test "creating a Form field value" do
    visit form_field_values_url
    click_on "New Form Field Value"

    fill_in "Customvalueid", with: @form_field_value.customValueID
    fill_in "Fk order", with: @form_field_value.fk_order_id
    fill_in "Fk portrait image", with: @form_field_value.fk_portrait_image_id
    fill_in "Fk template form field", with: @form_field_value.fk_template_form_field_id
    fill_in "Fk title2", with: @form_field_value.fk_title2_id
    fill_in "Fk title", with: @form_field_value.fk_title_id
    fill_in "Fk user", with: @form_field_value.fk_user_id
    fill_in "Title3id", with: @form_field_value.title3ID
    fill_in "Value", with: @form_field_value.value
    fill_in "X position", with: @form_field_value.x_position
    fill_in "Y position", with: @form_field_value.y_position
    click_on "Create Form field value"

    assert_text "Form field value was successfully created"
    click_on "Back"
  end

  test "updating a Form field value" do
    visit form_field_values_url
    click_on "Edit", match: :first

    fill_in "Customvalueid", with: @form_field_value.customValueID
    fill_in "Fk order", with: @form_field_value.fk_order_id
    fill_in "Fk portrait image", with: @form_field_value.fk_portrait_image_id
    fill_in "Fk template form field", with: @form_field_value.fk_template_form_field_id
    fill_in "Fk title2", with: @form_field_value.fk_title2_id
    fill_in "Fk title", with: @form_field_value.fk_title_id
    fill_in "Fk user", with: @form_field_value.fk_user_id
    fill_in "Title3id", with: @form_field_value.title3ID
    fill_in "Value", with: @form_field_value.value
    fill_in "X position", with: @form_field_value.x_position
    fill_in "Y position", with: @form_field_value.y_position
    click_on "Update Form field value"

    assert_text "Form field value was successfully updated"
    click_on "Back"
  end

  test "destroying a Form field value" do
    visit form_field_values_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Form field value was successfully destroyed"
  end
end
