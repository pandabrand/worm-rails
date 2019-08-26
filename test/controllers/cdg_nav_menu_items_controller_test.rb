require 'test_helper'

class CdgNavMenuItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_nav_menu_item = cdg_nav_menu_items(:one)
  end

  test "should get index" do
    get cdg_nav_menu_items_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_nav_menu_item_url
    assert_response :success
  end

  test "should create cdg_nav_menu_item" do
    assert_difference('CdgNavMenuItem.count') do
      post cdg_nav_menu_items_url, params: { cdg_nav_menu_item: { display_image_filename: @cdg_nav_menu_item.display_image_filename, display_string: @cdg_nav_menu_item.display_string, fk_parent_nav_menu_item_id: @cdg_nav_menu_item.fk_parent_nav_menu_item_id, is_active: @cdg_nav_menu_item.is_active, page_name: @cdg_nav_menu_item.page_name, sort_order: @cdg_nav_menu_item.sort_order } }
    end

    assert_redirected_to cdg_nav_menu_item_url(CdgNavMenuItem.last)
  end

  test "should show cdg_nav_menu_item" do
    get cdg_nav_menu_item_url(@cdg_nav_menu_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_nav_menu_item_url(@cdg_nav_menu_item)
    assert_response :success
  end

  test "should update cdg_nav_menu_item" do
    patch cdg_nav_menu_item_url(@cdg_nav_menu_item), params: { cdg_nav_menu_item: { display_image_filename: @cdg_nav_menu_item.display_image_filename, display_string: @cdg_nav_menu_item.display_string, fk_parent_nav_menu_item_id: @cdg_nav_menu_item.fk_parent_nav_menu_item_id, is_active: @cdg_nav_menu_item.is_active, page_name: @cdg_nav_menu_item.page_name, sort_order: @cdg_nav_menu_item.sort_order } }
    assert_redirected_to cdg_nav_menu_item_url(@cdg_nav_menu_item)
  end

  test "should destroy cdg_nav_menu_item" do
    assert_difference('CdgNavMenuItem.count', -1) do
      delete cdg_nav_menu_item_url(@cdg_nav_menu_item)
    end

    assert_redirected_to cdg_nav_menu_items_url
  end
end
