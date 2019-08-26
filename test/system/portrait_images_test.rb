require "application_system_test_case"

class PortraitImagesTest < ApplicationSystemTestCase
  setup do
    @portrait_image = portrait_images(:one)
  end

  test "visiting the index" do
    visit portrait_images_url
    assert_selector "h1", text: "Portrait Images"
  end

  test "creating a Portrait image" do
    visit portrait_images_url
    click_on "New Portrait Image"

    fill_in "Date uploaded", with: @portrait_image.date_uploaded
    fill_in "File size", with: @portrait_image.file_size
    fill_in "File type", with: @portrait_image.file_type
    fill_in "Filename", with: @portrait_image.filename
    fill_in "Fk order", with: @portrait_image.fk_order_id
    fill_in "Fk userinfo", with: @portrait_image.fk_userinfo_id
    fill_in "Height", with: @portrait_image.height
    fill_in "Isuserdefault", with: @portrait_image.isUserDefault
    fill_in "Orig filename", with: @portrait_image.orig_filename
    fill_in "Width", with: @portrait_image.width
    click_on "Create Portrait image"

    assert_text "Portrait image was successfully created"
    click_on "Back"
  end

  test "updating a Portrait image" do
    visit portrait_images_url
    click_on "Edit", match: :first

    fill_in "Date uploaded", with: @portrait_image.date_uploaded
    fill_in "File size", with: @portrait_image.file_size
    fill_in "File type", with: @portrait_image.file_type
    fill_in "Filename", with: @portrait_image.filename
    fill_in "Fk order", with: @portrait_image.fk_order_id
    fill_in "Fk userinfo", with: @portrait_image.fk_userinfo_id
    fill_in "Height", with: @portrait_image.height
    fill_in "Isuserdefault", with: @portrait_image.isUserDefault
    fill_in "Orig filename", with: @portrait_image.orig_filename
    fill_in "Width", with: @portrait_image.width
    click_on "Update Portrait image"

    assert_text "Portrait image was successfully updated"
    click_on "Back"
  end

  test "destroying a Portrait image" do
    visit portrait_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portrait image was successfully destroyed"
  end
end
