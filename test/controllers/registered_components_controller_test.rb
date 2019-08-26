require 'test_helper'

class RegisteredComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registered_component = registered_components(:one)
  end

  test "should get index" do
    get registered_components_url
    assert_response :success
  end

  test "should get new" do
    get new_registered_component_url
    assert_response :success
  end

  test "should create registered_component" do
    assert_difference('RegisteredComponent.count') do
      post registered_components_url, params: { registered_component: { admin_display_name: @registered_component.admin_display_name, component_name: @registered_component.component_name, page_description: @registered_component.page_description } }
    end

    assert_redirected_to registered_component_url(RegisteredComponent.last)
  end

  test "should show registered_component" do
    get registered_component_url(@registered_component)
    assert_response :success
  end

  test "should get edit" do
    get edit_registered_component_url(@registered_component)
    assert_response :success
  end

  test "should update registered_component" do
    patch registered_component_url(@registered_component), params: { registered_component: { admin_display_name: @registered_component.admin_display_name, component_name: @registered_component.component_name, page_description: @registered_component.page_description } }
    assert_redirected_to registered_component_url(@registered_component)
  end

  test "should destroy registered_component" do
    assert_difference('RegisteredComponent.count', -1) do
      delete registered_component_url(@registered_component)
    end

    assert_redirected_to registered_components_url
  end
end
