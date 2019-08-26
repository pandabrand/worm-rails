require "application_system_test_case"

class TffToTffgroupsTest < ApplicationSystemTestCase
  setup do
    @tff_to_tffgroup = tff_to_tffgroups(:one)
  end

  test "visiting the index" do
    visit tff_to_tffgroups_url
    assert_selector "h1", text: "Tff To Tffgroups"
  end

  test "creating a Tff to tffgroup" do
    visit tff_to_tffgroups_url
    click_on "New Tff To Tffgroup"

    fill_in "Pk", with: @tff_to_tffgroup.pk_id
    fill_in "Pk id1", with: @tff_to_tffgroup.pk_id1
    click_on "Create Tff to tffgroup"

    assert_text "Tff to tffgroup was successfully created"
    click_on "Back"
  end

  test "updating a Tff to tffgroup" do
    visit tff_to_tffgroups_url
    click_on "Edit", match: :first

    fill_in "Pk", with: @tff_to_tffgroup.pk_id
    fill_in "Pk id1", with: @tff_to_tffgroup.pk_id1
    click_on "Update Tff to tffgroup"

    assert_text "Tff to tffgroup was successfully updated"
    click_on "Back"
  end

  test "destroying a Tff to tffgroup" do
    visit tff_to_tffgroups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tff to tffgroup was successfully destroyed"
  end
end
