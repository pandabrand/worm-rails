require 'test_helper'

class AdLibraryNodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_library_node = ad_library_nodes(:one)
  end

  test "should get index" do
    get ad_library_nodes_url
    assert_response :success
  end

  test "should get new" do
    get new_ad_library_node_url
    assert_response :success
  end

  test "should create ad_library_node" do
    assert_difference('AdLibraryNode.count') do
      post ad_library_nodes_url, params: { ad_library_node: { date_created: @ad_library_node.date_created, date_modified: @ad_library_node.date_modified, fk_latest_template_id: @ad_library_node.fk_latest_template_id, fk_parent_node_id: @ad_library_node.fk_parent_node_id, fk_template_id: @ad_library_node.fk_template_id, is_active: @ad_library_node.is_active, level: @ad_library_node.level, name: @ad_library_node.name, thumbnail_unique_name: @ad_library_node.thumbnail_unique_name, thumbnail_upload_name: @ad_library_node.thumbnail_upload_name } }
    end

    assert_redirected_to ad_library_node_url(AdLibraryNode.last)
  end

  test "should show ad_library_node" do
    get ad_library_node_url(@ad_library_node)
    assert_response :success
  end

  test "should get edit" do
    get edit_ad_library_node_url(@ad_library_node)
    assert_response :success
  end

  test "should update ad_library_node" do
    patch ad_library_node_url(@ad_library_node), params: { ad_library_node: { date_created: @ad_library_node.date_created, date_modified: @ad_library_node.date_modified, fk_latest_template_id: @ad_library_node.fk_latest_template_id, fk_parent_node_id: @ad_library_node.fk_parent_node_id, fk_template_id: @ad_library_node.fk_template_id, is_active: @ad_library_node.is_active, level: @ad_library_node.level, name: @ad_library_node.name, thumbnail_unique_name: @ad_library_node.thumbnail_unique_name, thumbnail_upload_name: @ad_library_node.thumbnail_upload_name } }
    assert_redirected_to ad_library_node_url(@ad_library_node)
  end

  test "should destroy ad_library_node" do
    assert_difference('AdLibraryNode.count', -1) do
      delete ad_library_node_url(@ad_library_node)
    end

    assert_redirected_to ad_library_nodes_url
  end
end
