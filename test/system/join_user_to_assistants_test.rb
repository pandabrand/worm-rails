require "application_system_test_case"

class JoinUserToAssistantsTest < ApplicationSystemTestCase
  setup do
    @join_user_to_assistant = join_user_to_assistants(:one)
  end

  test "visiting the index" do
    visit join_user_to_assistants_url
    assert_selector "h1", text: "Join User To Assistants"
  end

  test "creating a Join user to assistant" do
    visit join_user_to_assistants_url
    click_on "New Join User To Assistant"

    fill_in "Cpfk assistant", with: @join_user_to_assistant.cpfk_assistant_id
    fill_in "Cpfk user", with: @join_user_to_assistant.cpfk_user_id
    click_on "Create Join user to assistant"

    assert_text "Join user to assistant was successfully created"
    click_on "Back"
  end

  test "updating a Join user to assistant" do
    visit join_user_to_assistants_url
    click_on "Edit", match: :first

    fill_in "Cpfk assistant", with: @join_user_to_assistant.cpfk_assistant_id
    fill_in "Cpfk user", with: @join_user_to_assistant.cpfk_user_id
    click_on "Update Join user to assistant"

    assert_text "Join user to assistant was successfully updated"
    click_on "Back"
  end

  test "destroying a Join user to assistant" do
    visit join_user_to_assistants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Join user to assistant was successfully destroyed"
  end
end
