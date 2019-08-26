require 'test_helper'

class PortraitImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portrait_image = portrait_images(:one)
  end

  test "should get index" do
    get portrait_images_url
    assert_response :success
  end

  test "should get new" do
    get new_portrait_image_url
    assert_response :success
  end

  test "should create portrait_image" do
    assert_difference('PortraitImage.count') do
      post portrait_images_url, params: { portrait_image: { date_uploaded: @portrait_image.date_uploaded, file_size: @portrait_image.file_size, file_type: @portrait_image.file_type, filename: @portrait_image.filename, fk_order_id: @portrait_image.fk_order_id, fk_userinfo_id: @portrait_image.fk_userinfo_id, height: @portrait_image.height, isUserDefault: @portrait_image.isUserDefault, orig_filename: @portrait_image.orig_filename, width: @portrait_image.width } }
    end

    assert_redirected_to portrait_image_url(PortraitImage.last)
  end

  test "should show portrait_image" do
    get portrait_image_url(@portrait_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_portrait_image_url(@portrait_image)
    assert_response :success
  end

  test "should update portrait_image" do
    patch portrait_image_url(@portrait_image), params: { portrait_image: { date_uploaded: @portrait_image.date_uploaded, file_size: @portrait_image.file_size, file_type: @portrait_image.file_type, filename: @portrait_image.filename, fk_order_id: @portrait_image.fk_order_id, fk_userinfo_id: @portrait_image.fk_userinfo_id, height: @portrait_image.height, isUserDefault: @portrait_image.isUserDefault, orig_filename: @portrait_image.orig_filename, width: @portrait_image.width } }
    assert_redirected_to portrait_image_url(@portrait_image)
  end

  test "should destroy portrait_image" do
    assert_difference('PortraitImage.count', -1) do
      delete portrait_image_url(@portrait_image)
    end

    assert_redirected_to portrait_images_url
  end
end
