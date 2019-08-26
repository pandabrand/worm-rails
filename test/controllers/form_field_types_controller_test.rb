require 'test_helper'

class FormFieldTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form_field_type = form_field_types(:one)
  end

  test "should get index" do
    get form_field_types_url
    assert_response :success
  end

  test "should get new" do
    get new_form_field_type_url
    assert_response :success
  end

  test "should create form_field_type" do
    assert_difference('FormFieldType.count') do
      post form_field_types_url, params: { form_field_type: { fk_data_ref_id: @form_field_type.fk_data_ref_id, type: @form_field_type.type } }
    end

    assert_redirected_to form_field_type_url(FormFieldType.last)
  end

  test "should show form_field_type" do
    get form_field_type_url(@form_field_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_field_type_url(@form_field_type)
    assert_response :success
  end

  test "should update form_field_type" do
    patch form_field_type_url(@form_field_type), params: { form_field_type: { fk_data_ref_id: @form_field_type.fk_data_ref_id, type: @form_field_type.type } }
    assert_redirected_to form_field_type_url(@form_field_type)
  end

  test "should destroy form_field_type" do
    assert_difference('FormFieldType.count', -1) do
      delete form_field_type_url(@form_field_type)
    end

    assert_redirected_to form_field_types_url
  end
end
