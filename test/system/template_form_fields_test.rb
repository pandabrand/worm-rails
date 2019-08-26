require "application_system_test_case"

class TemplateFormFieldsTest < ApplicationSystemTestCase
  setup do
    @template_form_field = template_form_fields(:one)
  end

  test "visiting the index" do
    visit template_form_fields_url
    assert_selector "h1", text: "Template Form Fields"
  end

  test "creating a Template form field" do
    visit template_form_fields_url
    click_on "New Template Form Field"

    fill_in "Templateformfield", with: @template_form_field.TemplateFormField
    fill_in "Default is visible", with: @template_form_field.default_is_visible
    fill_in "Default text", with: @template_form_field.default_text
    fill_in "Generate", with: @template_form_field.generate
    fill_in "Group name", with: @template_form_field.group_name
    fill_in "Height", with: @template_form_field.height
    fill_in "Idatepattern", with: @template_form_field.idatePattern
    fill_in "Instructions", with: @template_form_field.instructions
    fill_in "Is all caps", with: @template_form_field.is_all_caps
    fill_in "Prepopulate field", with: @template_form_field.prepopulate_field
    fill_in "Scaffold", with: @template_form_field.scaffold
    fill_in "Scaffoleferences", with: @template_form_field.scaffoleferences
    fill_in "Scafforinrails", with: @template_form_field.scafforinrails
    fill_in "Show designations", with: @template_form_field.show_designations
    fill_in "Soraeger", with: @template_form_field.soraeger
    fill_in "Soraiatum", with: @template_form_field.soraiatum
    fill_in "Sorails", with: @template_form_field.sorails
    fill_in "Soreldgroup", with: @template_form_field.soreldGroup
    fill_in "Text to replace", with: @template_form_field.text_to_replace
    fill_in "Width", with: @template_form_field.width
    fill_in "X position", with: @template_form_field.x_position
    fill_in "Y position", with: @template_form_field.y_position
    click_on "Create Template form field"

    assert_text "Template form field was successfully created"
    click_on "Back"
  end

  test "updating a Template form field" do
    visit template_form_fields_url
    click_on "Edit", match: :first

    fill_in "Templateformfield", with: @template_form_field.TemplateFormField
    fill_in "Default is visible", with: @template_form_field.default_is_visible
    fill_in "Default text", with: @template_form_field.default_text
    fill_in "Generate", with: @template_form_field.generate
    fill_in "Group name", with: @template_form_field.group_name
    fill_in "Height", with: @template_form_field.height
    fill_in "Idatepattern", with: @template_form_field.idatePattern
    fill_in "Instructions", with: @template_form_field.instructions
    fill_in "Is all caps", with: @template_form_field.is_all_caps
    fill_in "Prepopulate field", with: @template_form_field.prepopulate_field
    fill_in "Scaffold", with: @template_form_field.scaffold
    fill_in "Scaffoleferences", with: @template_form_field.scaffoleferences
    fill_in "Scafforinrails", with: @template_form_field.scafforinrails
    fill_in "Show designations", with: @template_form_field.show_designations
    fill_in "Soraeger", with: @template_form_field.soraeger
    fill_in "Soraiatum", with: @template_form_field.soraiatum
    fill_in "Sorails", with: @template_form_field.sorails
    fill_in "Soreldgroup", with: @template_form_field.soreldGroup
    fill_in "Text to replace", with: @template_form_field.text_to_replace
    fill_in "Width", with: @template_form_field.width
    fill_in "X position", with: @template_form_field.x_position
    fill_in "Y position", with: @template_form_field.y_position
    click_on "Update Template form field"

    assert_text "Template form field was successfully updated"
    click_on "Back"
  end

  test "destroying a Template form field" do
    visit template_form_fields_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Template form field was successfully destroyed"
  end
end
