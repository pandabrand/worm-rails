require 'test_helper'

class FormFieldValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form_field_value = form_field_values(:one)
  end

  test "should get index" do
    get form_field_values_url
    assert_response :success
  end

  test "should get new" do
    get new_form_field_value_url
    assert_response :success
  end

  test "should create form_field_value" do
    assert_difference('FormFieldValue.count') do
      post form_field_values_url, params: { form_field_value: { customValueID: @form_field_value.customValueID, fk_order_id: @form_field_value.fk_order_id, fk_portrait_image_id: @form_field_value.fk_portrait_image_id, fk_template_form_field_id: @form_field_value.fk_template_form_field_id, fk_title2_id: @form_field_value.fk_title2_id, fk_title_id: @form_field_value.fk_title_id, fk_user_id: @form_field_value.fk_user_id, title3ID: @form_field_value.title3ID, value: @form_field_value.value, x_position: @form_field_value.x_position, y_position: @form_field_value.y_position } }
    end

    assert_redirected_to form_field_value_url(FormFieldValue.last)
  end

  test "should show form_field_value" do
    get form_field_value_url(@form_field_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_field_value_url(@form_field_value)
    assert_response :success
  end

  test "should update form_field_value" do
    patch form_field_value_url(@form_field_value), params: { form_field_value: { customValueID: @form_field_value.customValueID, fk_order_id: @form_field_value.fk_order_id, fk_portrait_image_id: @form_field_value.fk_portrait_image_id, fk_template_form_field_id: @form_field_value.fk_template_form_field_id, fk_title2_id: @form_field_value.fk_title2_id, fk_title_id: @form_field_value.fk_title_id, fk_user_id: @form_field_value.fk_user_id, title3ID: @form_field_value.title3ID, value: @form_field_value.value, x_position: @form_field_value.x_position, y_position: @form_field_value.y_position } }
    assert_redirected_to form_field_value_url(@form_field_value)
  end

  test "should destroy form_field_value" do
    assert_difference('FormFieldValue.count', -1) do
      delete form_field_value_url(@form_field_value)
    end

    assert_redirected_to form_field_values_url
  end
end
