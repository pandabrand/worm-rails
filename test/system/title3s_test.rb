require "application_system_test_case"

class Title3sTest < ApplicationSystemTestCase
  setup do
    @title3 = title3s(:one)
  end

  test "visiting the index" do
    visit title3s_url
    assert_selector "h1", text: "Title3s"
  end

  test "creating a Title3" do
    visit title3s_url
    click_on "New Title3"

    fill_in "Isactive", with: @title3.isActive
    fill_in "Name", with: @title3.name
    fill_in "Sort order", with: @title3.sort_order
    click_on "Create Title3"

    assert_text "Title3 was successfully created"
    click_on "Back"
  end

  test "updating a Title3" do
    visit title3s_url
    click_on "Edit", match: :first

    fill_in "Isactive", with: @title3.isActive
    fill_in "Name", with: @title3.name
    fill_in "Sort order", with: @title3.sort_order
    click_on "Update Title3"

    assert_text "Title3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Title3" do
    visit title3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Title3 was successfully destroyed"
  end
end
