require 'test_helper'

class CdgUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_user = cdg_users(:one)
  end

  test "should get index" do
    get cdg_users_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_user_url
    assert_response :success
  end

  test "should create cdg_user" do
    assert_difference('CdgUser.count') do
      post cdg_users_url, params: { cdg_user: { date_created: @cdg_user.date_created, date_last_logged_in: @cdg_user.date_last_logged_in, date_modified: @cdg_user.date_modified, fk_user_id: @cdg_user.fk_user_id, fk_user_info_id: @cdg_user.fk_user_info_id, is_active: @cdg_user.is_active, new_login: @cdg_user.new_login, password: @cdg_user.password, skip_login_profile_page: @cdg_user.skip_login_profile_page, username: @cdg_user.username } }
    end

    assert_redirected_to cdg_user_url(CdgUser.last)
  end

  test "should show cdg_user" do
    get cdg_user_url(@cdg_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_user_url(@cdg_user)
    assert_response :success
  end

  test "should update cdg_user" do
    patch cdg_user_url(@cdg_user), params: { cdg_user: { date_created: @cdg_user.date_created, date_last_logged_in: @cdg_user.date_last_logged_in, date_modified: @cdg_user.date_modified, fk_user_id: @cdg_user.fk_user_id, fk_user_info_id: @cdg_user.fk_user_info_id, is_active: @cdg_user.is_active, new_login: @cdg_user.new_login, password: @cdg_user.password, skip_login_profile_page: @cdg_user.skip_login_profile_page, username: @cdg_user.username } }
    assert_redirected_to cdg_user_url(@cdg_user)
  end

  test "should destroy cdg_user" do
    assert_difference('CdgUser.count', -1) do
      delete cdg_user_url(@cdg_user)
    end

    assert_redirected_to cdg_users_url
  end
end
