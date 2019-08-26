require 'test_helper'

class UserUploadLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_upload_log = user_upload_logs(:one)
  end

  test "should get index" do
    get user_upload_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_upload_log_url
    assert_response :success
  end

  test "should create user_upload_log" do
    assert_difference('UserUploadLog.count') do
      post user_upload_logs_url, params: { user_upload_log: { fk_user_id: @user_upload_log.fk_user_id, type: @user_upload_log.type, upload_date: @user_upload_log.upload_date } }
    end

    assert_redirected_to user_upload_log_url(UserUploadLog.last)
  end

  test "should show user_upload_log" do
    get user_upload_log_url(@user_upload_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_upload_log_url(@user_upload_log)
    assert_response :success
  end

  test "should update user_upload_log" do
    patch user_upload_log_url(@user_upload_log), params: { user_upload_log: { fk_user_id: @user_upload_log.fk_user_id, type: @user_upload_log.type, upload_date: @user_upload_log.upload_date } }
    assert_redirected_to user_upload_log_url(@user_upload_log)
  end

  test "should destroy user_upload_log" do
    assert_difference('UserUploadLog.count', -1) do
      delete user_upload_log_url(@user_upload_log)
    end

    assert_redirected_to user_upload_logs_url
  end
end
