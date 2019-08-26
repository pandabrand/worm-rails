require 'test_helper'

class ImportManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @import_manager = import_managers(:one)
  end

  test "should get index" do
    get import_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_import_manager_url
    assert_response :success
  end

  test "should create import_manager" do
    assert_difference('ImportManager.count') do
      post import_managers_url, params: { import_manager: { address: @import_manager.address, area_id: @import_manager.area_id, branch_id: @import_manager.branch_id, city: @import_manager.city, emp_id: @import_manager.emp_id, first_name: @import_manager.first_name, job_category: @import_manager.job_category, last_name: @import_manager.last_name, region_id: @import_manager.region_id, state: @import_manager.state, work_phone: @import_manager.work_phone, zip: @import_manager.zip } }
    end

    assert_redirected_to import_manager_url(ImportManager.last)
  end

  test "should show import_manager" do
    get import_manager_url(@import_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_import_manager_url(@import_manager)
    assert_response :success
  end

  test "should update import_manager" do
    patch import_manager_url(@import_manager), params: { import_manager: { address: @import_manager.address, area_id: @import_manager.area_id, branch_id: @import_manager.branch_id, city: @import_manager.city, emp_id: @import_manager.emp_id, first_name: @import_manager.first_name, job_category: @import_manager.job_category, last_name: @import_manager.last_name, region_id: @import_manager.region_id, state: @import_manager.state, work_phone: @import_manager.work_phone, zip: @import_manager.zip } }
    assert_redirected_to import_manager_url(@import_manager)
  end

  test "should destroy import_manager" do
    assert_difference('ImportManager.count', -1) do
      delete import_manager_url(@import_manager)
    end

    assert_redirected_to import_managers_url
  end
end
