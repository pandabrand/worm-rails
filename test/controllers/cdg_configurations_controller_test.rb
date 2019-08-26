require 'test_helper'

class CdgConfigurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_configuration = cdg_configurations(:one)
  end

  test "should get index" do
    get cdg_configurations_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_configuration_url
    assert_response :success
  end

  test "should create cdg_configuration" do
    assert_difference('CdgConfiguration.count') do
      post cdg_configurations_url, params: { cdg_configuration: { is_default: @cdg_configuration.is_default, name: @cdg_configuration.name, value: @cdg_configuration.value } }
    end

    assert_redirected_to cdg_configuration_url(CdgConfiguration.last)
  end

  test "should show cdg_configuration" do
    get cdg_configuration_url(@cdg_configuration)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_configuration_url(@cdg_configuration)
    assert_response :success
  end

  test "should update cdg_configuration" do
    patch cdg_configuration_url(@cdg_configuration), params: { cdg_configuration: { is_default: @cdg_configuration.is_default, name: @cdg_configuration.name, value: @cdg_configuration.value } }
    assert_redirected_to cdg_configuration_url(@cdg_configuration)
  end

  test "should destroy cdg_configuration" do
    assert_difference('CdgConfiguration.count', -1) do
      delete cdg_configuration_url(@cdg_configuration)
    end

    assert_redirected_to cdg_configurations_url
  end
end
