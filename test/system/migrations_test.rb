require "application_system_test_case"

class MigrationsTest < ApplicationSystemTestCase
  setup do
    @migration = migrations(:one)
  end

  test "visiting the index" do
    visit migrations_url
    assert_selector "h1", text: "Migrations"
  end

  test "creating a Migration" do
    visit migrations_url
    click_on "New Migration"

    fill_in "Batch", with: @migration.batch
    fill_in "Migration time", with: @migration.migration_time
    fill_in "Name", with: @migration.name
    click_on "Create Migration"

    assert_text "Migration was successfully created"
    click_on "Back"
  end

  test "updating a Migration" do
    visit migrations_url
    click_on "Edit", match: :first

    fill_in "Batch", with: @migration.batch
    fill_in "Migration time", with: @migration.migration_time
    fill_in "Name", with: @migration.name
    click_on "Update Migration"

    assert_text "Migration was successfully updated"
    click_on "Back"
  end

  test "destroying a Migration" do
    visit migrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Migration was successfully destroyed"
  end
end
