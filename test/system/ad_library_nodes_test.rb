require "application_system_test_case"

class AdLibraryNodesTest < ApplicationSystemTestCase
  setup do
    @ad_library_node = ad_library_nodes(:one)
  end

  test "visiting the index" do
    visit ad_library_nodes_url
    assert_selector "h1", text: "Ad Library Nodes"
  end

  test "creating a Ad library node" do
    visit ad_library_nodes_url
    click_on "New Ad Library Node"

    fill_in "Date created", with: @ad_library_node.date_created
    fill_in "Date modified", with: @ad_library_node.date_modified
    fill_in "Fk latest template", with: @ad_library_node.fk_latest_template_id
    fill_in "Fk parent node", with: @ad_library_node.fk_parent_node_id
    fill_in "Fk template", with: @ad_library_node.fk_template_id
    fill_in "Is active", with: @ad_library_node.is_active
    fill_in "Level", with: @ad_library_node.level
    fill_in "Name", with: @ad_library_node.name
    fill_in "Thumbnail unique name", with: @ad_library_node.thumbnail_unique_name
    fill_in "Thumbnail upload name", with: @ad_library_node.thumbnail_upload_name
    click_on "Create Ad library node"

    assert_text "Ad library node was successfully created"
    click_on "Back"
  end

  test "updating a Ad library node" do
    visit ad_library_nodes_url
    click_on "Edit", match: :first

    fill_in "Date created", with: @ad_library_node.date_created
    fill_in "Date modified", with: @ad_library_node.date_modified
    fill_in "Fk latest template", with: @ad_library_node.fk_latest_template_id
    fill_in "Fk parent node", with: @ad_library_node.fk_parent_node_id
    fill_in "Fk template", with: @ad_library_node.fk_template_id
    fill_in "Is active", with: @ad_library_node.is_active
    fill_in "Level", with: @ad_library_node.level
    fill_in "Name", with: @ad_library_node.name
    fill_in "Thumbnail unique name", with: @ad_library_node.thumbnail_unique_name
    fill_in "Thumbnail upload name", with: @ad_library_node.thumbnail_upload_name
    click_on "Update Ad library node"

    assert_text "Ad library node was successfully updated"
    click_on "Back"
  end

  test "destroying a Ad library node" do
    visit ad_library_nodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ad library node was successfully destroyed"
  end
end
