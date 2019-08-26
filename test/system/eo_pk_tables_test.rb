require "application_system_test_case"

class EoPkTablesTest < ApplicationSystemTestCase
  setup do
    @eo_pk_table = eo_pk_tables(:one)
  end

  test "visiting the index" do
    visit eo_pk_tables_url
    assert_selector "h1", text: "Eo Pk Tables"
  end

  test "creating a Eo pk table" do
    visit eo_pk_tables_url
    click_on "New Eo Pk Table"

    fill_in "Pk", with: @eo_pk_table.PK
    click_on "Create Eo pk table"

    assert_text "Eo pk table was successfully created"
    click_on "Back"
  end

  test "updating a Eo pk table" do
    visit eo_pk_tables_url
    click_on "Edit", match: :first

    fill_in "Pk", with: @eo_pk_table.PK
    click_on "Update Eo pk table"

    assert_text "Eo pk table was successfully updated"
    click_on "Back"
  end

  test "destroying a Eo pk table" do
    visit eo_pk_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eo pk table was successfully destroyed"
  end
end
