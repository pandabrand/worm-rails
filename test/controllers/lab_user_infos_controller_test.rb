require 'test_helper'

class LabUserInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lab_user_info = lab_user_infos(:one)
  end

  test "should get index" do
    get lab_user_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_lab_user_info_url
    assert_response :success
  end

  test "should create lab_user_info" do
    assert_difference('LabUserInfo.count') do
      post lab_user_infos_url, params: { lab_user_info: { alternate_address_1: @lab_user_info.alternate_address_1, alternate_address_2: @lab_user_info.alternate_address_2, alternate_city: @lab_user_info.alternate_city, alternate_zip: @lab_user_info.alternate_zip, assistant_email: @lab_user_info.assistant_email, business_fax: @lab_user_info.business_fax, business_phone: @lab_user_info.business_phone, date_created: @lab_user_info.date_created, date_modified: @lab_user_info.date_modified, employee_id: @lab_user_info.employee_id, financial_advisor_id: @lab_user_info.financial_advisor_id, fkTitle3ID: @lab_user_info.fkTitle3ID, fk_alternate_us_state_id: @lab_user_info.fk_alternate_us_state_id, fk_area_id: @lab_user_info.fk_area_id, fk_branch_id: @lab_user_info.fk_branch_id, fk_client_id: @lab_user_info.fk_client_id, fk_country_id: @lab_user_info.fk_country_id, fk_region_id: @lab_user_info.fk_region_id, fk_roletitle_id: @lab_user_info.fk_roletitle_id, fk_title1_id: @lab_user_info.fk_title1_id, fk_title2_id: @lab_user_info.fk_title2_id, is_active: @lab_user_info.is_active, name_first: @lab_user_info.name_first, name_last: @lab_user_info.name_last } }
    end

    assert_redirected_to lab_user_info_url(LabUserInfo.last)
  end

  test "should show lab_user_info" do
    get lab_user_info_url(@lab_user_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_lab_user_info_url(@lab_user_info)
    assert_response :success
  end

  test "should update lab_user_info" do
    patch lab_user_info_url(@lab_user_info), params: { lab_user_info: { alternate_address_1: @lab_user_info.alternate_address_1, alternate_address_2: @lab_user_info.alternate_address_2, alternate_city: @lab_user_info.alternate_city, alternate_zip: @lab_user_info.alternate_zip, assistant_email: @lab_user_info.assistant_email, business_fax: @lab_user_info.business_fax, business_phone: @lab_user_info.business_phone, date_created: @lab_user_info.date_created, date_modified: @lab_user_info.date_modified, employee_id: @lab_user_info.employee_id, financial_advisor_id: @lab_user_info.financial_advisor_id, fkTitle3ID: @lab_user_info.fkTitle3ID, fk_alternate_us_state_id: @lab_user_info.fk_alternate_us_state_id, fk_area_id: @lab_user_info.fk_area_id, fk_branch_id: @lab_user_info.fk_branch_id, fk_client_id: @lab_user_info.fk_client_id, fk_country_id: @lab_user_info.fk_country_id, fk_region_id: @lab_user_info.fk_region_id, fk_roletitle_id: @lab_user_info.fk_roletitle_id, fk_title1_id: @lab_user_info.fk_title1_id, fk_title2_id: @lab_user_info.fk_title2_id, is_active: @lab_user_info.is_active, name_first: @lab_user_info.name_first, name_last: @lab_user_info.name_last } }
    assert_redirected_to lab_user_info_url(@lab_user_info)
  end

  test "should destroy lab_user_info" do
    assert_difference('LabUserInfo.count', -1) do
      delete lab_user_info_url(@lab_user_info)
    end

    assert_redirected_to lab_user_infos_url
  end
end
