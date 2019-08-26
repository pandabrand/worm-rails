require 'test_helper'

class ExportUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @export_user = export_users(:one)
  end

  test "should get index" do
    get export_users_url
    assert_response :success
  end

  test "should get new" do
    get new_export_user_url
    assert_response :success
  end

  test "should create export_user" do
    assert_difference('ExportUser.count') do
      post export_users_url, params: { export_user: { area_id: @export_user.area_id, branch_id: @export_user.branch_id, email_address: @export_user.email_address, emp_id: @export_user.emp_id, financial_advisor_id: @export_user.financial_advisor_id, first_name: @export_user.first_name, fk_user_id: @export_user.fk_user_id, job_title: @export_user.job_title, last_name: @export_user.last_name, region_id: @export_user.region_id } }
    end

    assert_redirected_to export_user_url(ExportUser.last)
  end

  test "should show export_user" do
    get export_user_url(@export_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_export_user_url(@export_user)
    assert_response :success
  end

  test "should update export_user" do
    patch export_user_url(@export_user), params: { export_user: { area_id: @export_user.area_id, branch_id: @export_user.branch_id, email_address: @export_user.email_address, emp_id: @export_user.emp_id, financial_advisor_id: @export_user.financial_advisor_id, first_name: @export_user.first_name, fk_user_id: @export_user.fk_user_id, job_title: @export_user.job_title, last_name: @export_user.last_name, region_id: @export_user.region_id } }
    assert_redirected_to export_user_url(@export_user)
  end

  test "should destroy export_user" do
    assert_difference('ExportUser.count', -1) do
      delete export_user_url(@export_user)
    end

    assert_redirected_to export_users_url
  end
end
