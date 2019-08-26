require 'test_helper'

class TemplateFormFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @template_form_field = template_form_fields(:one)
  end

  test "should get index" do
    get template_form_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_template_form_field_url
    assert_response :success
  end

  test "should create template_form_field" do
    assert_difference('TemplateFormField.count') do
      post template_form_fields_url, params: { template_form_field: { TemplateFormField: @template_form_field.TemplateFormField, default_is_visible: @template_form_field.default_is_visible, default_text: @template_form_field.default_text, generate: @template_form_field.generate, group_name: @template_form_field.group_name, height: @template_form_field.height, idatePattern: @template_form_field.idatePattern, instructions: @template_form_field.instructions, is_all_caps: @template_form_field.is_all_caps, prepopulate_field: @template_form_field.prepopulate_field, scaffold: @template_form_field.scaffold, scaffoleferences: @template_form_field.scaffoleferences, scafforinrails: @template_form_field.scafforinrails, show_designations: @template_form_field.show_designations, soraeger: @template_form_field.soraeger, soraiatum: @template_form_field.soraiatum, sorails: @template_form_field.sorails, soreldGroup: @template_form_field.soreldGroup, text_to_replace: @template_form_field.text_to_replace, width: @template_form_field.width, x_position: @template_form_field.x_position, y_position: @template_form_field.y_position } }
    end

    assert_redirected_to template_form_field_url(TemplateFormField.last)
  end

  test "should show template_form_field" do
    get template_form_field_url(@template_form_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_template_form_field_url(@template_form_field)
    assert_response :success
  end

  test "should update template_form_field" do
    patch template_form_field_url(@template_form_field), params: { template_form_field: { TemplateFormField: @template_form_field.TemplateFormField, default_is_visible: @template_form_field.default_is_visible, default_text: @template_form_field.default_text, generate: @template_form_field.generate, group_name: @template_form_field.group_name, height: @template_form_field.height, idatePattern: @template_form_field.idatePattern, instructions: @template_form_field.instructions, is_all_caps: @template_form_field.is_all_caps, prepopulate_field: @template_form_field.prepopulate_field, scaffold: @template_form_field.scaffold, scaffoleferences: @template_form_field.scaffoleferences, scafforinrails: @template_form_field.scafforinrails, show_designations: @template_form_field.show_designations, soraeger: @template_form_field.soraeger, soraiatum: @template_form_field.soraiatum, sorails: @template_form_field.sorails, soreldGroup: @template_form_field.soreldGroup, text_to_replace: @template_form_field.text_to_replace, width: @template_form_field.width, x_position: @template_form_field.x_position, y_position: @template_form_field.y_position } }
    assert_redirected_to template_form_field_url(@template_form_field)
  end

  test "should destroy template_form_field" do
    assert_difference('TemplateFormField.count', -1) do
      delete template_form_field_url(@template_form_field)
    end

    assert_redirected_to template_form_fields_url
  end
end
