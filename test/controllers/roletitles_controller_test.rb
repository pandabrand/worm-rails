require 'test_helper'

class RoletitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roletitle = roletitles(:one)
  end

  test "should get index" do
    get roletitles_url
    assert_response :success
  end

  test "should get new" do
    get new_roletitle_url
    assert_response :success
  end

  test "should create roletitle" do
    assert_difference('Roletitle.count') do
      post roletitles_url, params: { roletitle: { fk_role_id: @roletitle.fk_role_id, is_active: @roletitle.is_active, name: @roletitle.name } }
    end

    assert_redirected_to roletitle_url(Roletitle.last)
  end

  test "should show roletitle" do
    get roletitle_url(@roletitle)
    assert_response :success
  end

  test "should get edit" do
    get edit_roletitle_url(@roletitle)
    assert_response :success
  end

  test "should update roletitle" do
    patch roletitle_url(@roletitle), params: { roletitle: { fk_role_id: @roletitle.fk_role_id, is_active: @roletitle.is_active, name: @roletitle.name } }
    assert_redirected_to roletitle_url(@roletitle)
  end

  test "should destroy roletitle" do
    assert_difference('Roletitle.count', -1) do
      delete roletitle_url(@roletitle)
    end

    assert_redirected_to roletitles_url
  end
end
