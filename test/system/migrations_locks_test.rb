require "application_system_test_case"

class MigrationsLocksTest < ApplicationSystemTestCase
  setup do
    @migrations_lock = migrations_locks(:one)
  end

  test "visiting the index" do
    visit migrations_locks_url
    assert_selector "h1", text: "Migrations Locks"
  end

  test "creating a Migrations lock" do
    visit migrations_locks_url
    click_on "New Migrations Lock"

    fill_in "Is locked", with: @migrations_lock.is_locked
    click_on "Create Migrations lock"

    assert_text "Migrations lock was successfully created"
    click_on "Back"
  end

  test "updating a Migrations lock" do
    visit migrations_locks_url
    click_on "Edit", match: :first

    fill_in "Is locked", with: @migrations_lock.is_locked
    click_on "Update Migrations lock"

    assert_text "Migrations lock was successfully updated"
    click_on "Back"
  end

  test "destroying a Migrations lock" do
    visit migrations_locks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Migrations lock was successfully destroyed"
  end
end
