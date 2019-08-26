require 'test_helper'

class TffToTffgroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tff_to_tffgroup = tff_to_tffgroups(:one)
  end

  test "should get index" do
    get tff_to_tffgroups_url
    assert_response :success
  end

  test "should get new" do
    get new_tff_to_tffgroup_url
    assert_response :success
  end

  test "should create tff_to_tffgroup" do
    assert_difference('TffToTffgroup.count') do
      post tff_to_tffgroups_url, params: { tff_to_tffgroup: { pk_id: @tff_to_tffgroup.pk_id, pk_id1: @tff_to_tffgroup.pk_id1 } }
    end

    assert_redirected_to tff_to_tffgroup_url(TffToTffgroup.last)
  end

  test "should show tff_to_tffgroup" do
    get tff_to_tffgroup_url(@tff_to_tffgroup)
    assert_response :success
  end

  test "should get edit" do
    get edit_tff_to_tffgroup_url(@tff_to_tffgroup)
    assert_response :success
  end

  test "should update tff_to_tffgroup" do
    patch tff_to_tffgroup_url(@tff_to_tffgroup), params: { tff_to_tffgroup: { pk_id: @tff_to_tffgroup.pk_id, pk_id1: @tff_to_tffgroup.pk_id1 } }
    assert_redirected_to tff_to_tffgroup_url(@tff_to_tffgroup)
  end

  test "should destroy tff_to_tffgroup" do
    assert_difference('TffToTffgroup.count', -1) do
      delete tff_to_tffgroup_url(@tff_to_tffgroup)
    end

    assert_redirected_to tff_to_tffgroups_url
  end
end
