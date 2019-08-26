require "application_system_test_case"

class FormFieldTypesTest < ApplicationSystemTestCase
  setup do
    @form_field_type = form_field_types(:one)
  end

  test "visiting the index" do
    visit form_field_types_url
    assert_selector "h1", text: "Form Field Types"
  end

  test "creating a Form field type" do
    visit form_field_types_url
    click_on "New Form Field Type"

    fill_in "Fk data ref", with: @form_field_type.fk_data_ref_id
    fill_in "Type", with: @form_field_type.type
    click_on "Create Form field type"

    assert_text "Form field type was successfully created"
    click_on "Back"
  end

  test "updating a Form field type" do
    visit form_field_types_url
    click_on "Edit", match: :first

    fill_in "Fk data ref", with: @form_field_type.fk_data_ref_id
    fill_in "Type", with: @form_field_type.type
    click_on "Update Form field type"

    assert_text "Form field type was successfully updated"
    click_on "Back"
  end

  test "destroying a Form field type" do
    visit form_field_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Form field type was successfully destroyed"
  end
end
