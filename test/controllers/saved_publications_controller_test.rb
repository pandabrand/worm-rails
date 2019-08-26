require 'test_helper'

class SavedPublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saved_publication = saved_publications(:one)
  end

  test "should get index" do
    get saved_publications_url
    assert_response :success
  end

  test "should get new" do
    get new_saved_publication_url
    assert_response :success
  end

  test "should create saved_publication" do
    assert_difference('SavedPublication.count') do
      post saved_publications_url, params: { saved_publication: { contact_email_address: @saved_publication.contact_email_address, contact_name: @saved_publication.contact_name, contact_phone: @saved_publication.contact_phone, date_created: @saved_publication.date_created, fk_creator_id: @saved_publication.fk_creator_id, fk_publication_type_id: @saved_publication.fk_publication_type_id, is_active: @saved_publication.is_active, publication_name: @saved_publication.publication_name } }
    end

    assert_redirected_to saved_publication_url(SavedPublication.last)
  end

  test "should show saved_publication" do
    get saved_publication_url(@saved_publication)
    assert_response :success
  end

  test "should get edit" do
    get edit_saved_publication_url(@saved_publication)
    assert_response :success
  end

  test "should update saved_publication" do
    patch saved_publication_url(@saved_publication), params: { saved_publication: { contact_email_address: @saved_publication.contact_email_address, contact_name: @saved_publication.contact_name, contact_phone: @saved_publication.contact_phone, date_created: @saved_publication.date_created, fk_creator_id: @saved_publication.fk_creator_id, fk_publication_type_id: @saved_publication.fk_publication_type_id, is_active: @saved_publication.is_active, publication_name: @saved_publication.publication_name } }
    assert_redirected_to saved_publication_url(@saved_publication)
  end

  test "should destroy saved_publication" do
    assert_difference('SavedPublication.count', -1) do
      delete saved_publication_url(@saved_publication)
    end

    assert_redirected_to saved_publications_url
  end
end
