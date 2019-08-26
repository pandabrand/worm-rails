require "application_system_test_case"

class Title2sTest < ApplicationSystemTestCase
  setup do
    @title2 = title2s(:one)
  end

  test "visiting the index" do
    visit title2s_url
    assert_selector "h1", text: "Title2s"
  end

  test "creating a Title2" do
    visit title2s_url
    click_on "New Title2"

    fill_in "Is active", with: @title2.is_active
    fill_in "Name", with: @title2.name
    fill_in "Sort order", with: @title2.sort_order
    click_on "Create Title2"

    assert_text "Title2 was successfully created"
    click_on "Back"
  end

  test "updating a Title2" do
    visit title2s_url
    click_on "Edit", match: :first

    fill_in "Is active", with: @title2.is_active
    fill_in "Name", with: @title2.name
    fill_in "Sort order", with: @title2.sort_order
    click_on "Update Title2"

    assert_text "Title2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Title2" do
    visit title2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Title2 was successfully destroyed"
  end
end
