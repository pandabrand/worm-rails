require "application_system_test_case"

class SavedPublicationsTest < ApplicationSystemTestCase
  setup do
    @saved_publication = saved_publications(:one)
  end

  test "visiting the index" do
    visit saved_publications_url
    assert_selector "h1", text: "Saved Publications"
  end

  test "creating a Saved publication" do
    visit saved_publications_url
    click_on "New Saved Publication"

    fill_in "Contact email address", with: @saved_publication.contact_email_address
    fill_in "Contact name", with: @saved_publication.contact_name
    fill_in "Contact phone", with: @saved_publication.contact_phone
    fill_in "Date created", with: @saved_publication.date_created
    fill_in "Fk creator", with: @saved_publication.fk_creator_id
    fill_in "Fk publication type", with: @saved_publication.fk_publication_type_id
    fill_in "Is active", with: @saved_publication.is_active
    fill_in "Publication name", with: @saved_publication.publication_name
    click_on "Create Saved publication"

    assert_text "Saved publication was successfully created"
    click_on "Back"
  end

  test "updating a Saved publication" do
    visit saved_publications_url
    click_on "Edit", match: :first

    fill_in "Contact email address", with: @saved_publication.contact_email_address
    fill_in "Contact name", with: @saved_publication.contact_name
    fill_in "Contact phone", with: @saved_publication.contact_phone
    fill_in "Date created", with: @saved_publication.date_created
    fill_in "Fk creator", with: @saved_publication.fk_creator_id
    fill_in "Fk publication type", with: @saved_publication.fk_publication_type_id
    fill_in "Is active", with: @saved_publication.is_active
    fill_in "Publication name", with: @saved_publication.publication_name
    click_on "Update Saved publication"

    assert_text "Saved publication was successfully updated"
    click_on "Back"
  end

  test "destroying a Saved publication" do
    visit saved_publications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Saved publication was successfully destroyed"
  end
end
