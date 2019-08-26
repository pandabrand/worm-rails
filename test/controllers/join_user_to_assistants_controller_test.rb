require 'test_helper'

class JoinUserToAssistantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_user_to_assistant = join_user_to_assistants(:one)
  end

  test "should get index" do
    get join_user_to_assistants_url
    assert_response :success
  end

  test "should get new" do
    get new_join_user_to_assistant_url
    assert_response :success
  end

  test "should create join_user_to_assistant" do
    assert_difference('JoinUserToAssistant.count') do
      post join_user_to_assistants_url, params: { join_user_to_assistant: { cpfk_assistant_id: @join_user_to_assistant.cpfk_assistant_id, cpfk_user_id: @join_user_to_assistant.cpfk_user_id } }
    end

    assert_redirected_to join_user_to_assistant_url(JoinUserToAssistant.last)
  end

  test "should show join_user_to_assistant" do
    get join_user_to_assistant_url(@join_user_to_assistant)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_user_to_assistant_url(@join_user_to_assistant)
    assert_response :success
  end

  test "should update join_user_to_assistant" do
    patch join_user_to_assistant_url(@join_user_to_assistant), params: { join_user_to_assistant: { cpfk_assistant_id: @join_user_to_assistant.cpfk_assistant_id, cpfk_user_id: @join_user_to_assistant.cpfk_user_id } }
    assert_redirected_to join_user_to_assistant_url(@join_user_to_assistant)
  end

  test "should destroy join_user_to_assistant" do
    assert_difference('JoinUserToAssistant.count', -1) do
      delete join_user_to_assistant_url(@join_user_to_assistant)
    end

    assert_redirected_to join_user_to_assistants_url
  end
end
