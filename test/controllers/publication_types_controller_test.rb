require 'test_helper'

class PublicationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publication_type = publication_types(:one)
  end

  test "should get index" do
    get publication_types_url
    assert_response :success
  end

  test "should get new" do
    get new_publication_type_url
    assert_response :success
  end

  test "should create publication_type" do
    assert_difference('PublicationType.count') do
      post publication_types_url, params: { publication_type: { name: @publication_type.name } }
    end

    assert_redirected_to publication_type_url(PublicationType.last)
  end

  test "should show publication_type" do
    get publication_type_url(@publication_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_publication_type_url(@publication_type)
    assert_response :success
  end

  test "should update publication_type" do
    patch publication_type_url(@publication_type), params: { publication_type: { name: @publication_type.name } }
    assert_redirected_to publication_type_url(@publication_type)
  end

  test "should destroy publication_type" do
    assert_difference('PublicationType.count', -1) do
      delete publication_type_url(@publication_type)
    end

    assert_redirected_to publication_types_url
  end
end
