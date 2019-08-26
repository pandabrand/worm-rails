require 'test_helper'

class UsStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @us_state = us_states(:one)
  end

  test "should get index" do
    get us_states_url
    assert_response :success
  end

  test "should get new" do
    get new_us_state_url
    assert_response :success
  end

  test "should create us_state" do
    assert_difference('UsState.count') do
      post us_states_url, params: { us_state: { abbreviation: @us_state.abbreviation, name: @us_state.name, sort_order: @us_state.sort_order } }
    end

    assert_redirected_to us_state_url(UsState.last)
  end

  test "should show us_state" do
    get us_state_url(@us_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_us_state_url(@us_state)
    assert_response :success
  end

  test "should update us_state" do
    patch us_state_url(@us_state), params: { us_state: { abbreviation: @us_state.abbreviation, name: @us_state.name, sort_order: @us_state.sort_order } }
    assert_redirected_to us_state_url(@us_state)
  end

  test "should destroy us_state" do
    assert_difference('UsState.count', -1) do
      delete us_state_url(@us_state)
    end

    assert_redirected_to us_states_url
  end
end
