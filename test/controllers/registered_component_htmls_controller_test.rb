require 'test_helper'

class RegisteredComponentHtmlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registered_component_html = registered_component_htmls(:one)
  end

  test "should get index" do
    get registered_component_htmls_url
    assert_response :success
  end

  test "should get new" do
    get new_registered_component_html_url
    assert_response :success
  end

  test "should create registered_component_html" do
    assert_difference('RegisteredComponentHtml.count') do
      post registered_component_htmls_url, params: { registered_component_html: { date_created: @registered_component_html.date_created, date_modified: @registered_component_html.date_modified, display_name: @registered_component_html.display_name, fk_component_id: @registered_component_html.fk_component_id, name: @registered_component_html.name, sort_order: @registered_component_html.sort_order, text_data: @registered_component_html.text_data } }
    end

    assert_redirected_to registered_component_html_url(RegisteredComponentHtml.last)
  end

  test "should show registered_component_html" do
    get registered_component_html_url(@registered_component_html)
    assert_response :success
  end

  test "should get edit" do
    get edit_registered_component_html_url(@registered_component_html)
    assert_response :success
  end

  test "should update registered_component_html" do
    patch registered_component_html_url(@registered_component_html), params: { registered_component_html: { date_created: @registered_component_html.date_created, date_modified: @registered_component_html.date_modified, display_name: @registered_component_html.display_name, fk_component_id: @registered_component_html.fk_component_id, name: @registered_component_html.name, sort_order: @registered_component_html.sort_order, text_data: @registered_component_html.text_data } }
    assert_redirected_to registered_component_html_url(@registered_component_html)
  end

  test "should destroy registered_component_html" do
    assert_difference('RegisteredComponentHtml.count', -1) do
      delete registered_component_html_url(@registered_component_html)
    end

    assert_redirected_to registered_component_htmls_url
  end
end
