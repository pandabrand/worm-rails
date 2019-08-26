require 'test_helper'

class UserCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_comment = user_comments(:one)
  end

  test "should get index" do
    get user_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_user_comment_url
    assert_response :success
  end

  test "should create user_comment" do
    assert_difference('UserComment.count') do
      post user_comments_url, params: { user_comment: { date_created: @user_comment.date_created, fk_creator_id: @user_comment.fk_creator_id, fk_user_id: @user_comment.fk_user_id, value: @user_comment.value } }
    end

    assert_redirected_to user_comment_url(UserComment.last)
  end

  test "should show user_comment" do
    get user_comment_url(@user_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_comment_url(@user_comment)
    assert_response :success
  end

  test "should update user_comment" do
    patch user_comment_url(@user_comment), params: { user_comment: { date_created: @user_comment.date_created, fk_creator_id: @user_comment.fk_creator_id, fk_user_id: @user_comment.fk_user_id, value: @user_comment.value } }
    assert_redirected_to user_comment_url(@user_comment)
  end

  test "should destroy user_comment" do
    assert_difference('UserComment.count', -1) do
      delete user_comment_url(@user_comment)
    end

    assert_redirected_to user_comments_url
  end
end
