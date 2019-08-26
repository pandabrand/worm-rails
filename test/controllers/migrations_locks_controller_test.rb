require 'test_helper'

class MigrationsLocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @migrations_lock = migrations_locks(:one)
  end

  test "should get index" do
    get migrations_locks_url
    assert_response :success
  end

  test "should get new" do
    get new_migrations_lock_url
    assert_response :success
  end

  test "should create migrations_lock" do
    assert_difference('MigrationsLock.count') do
      post migrations_locks_url, params: { migrations_lock: { is_locked: @migrations_lock.is_locked } }
    end

    assert_redirected_to migrations_lock_url(MigrationsLock.last)
  end

  test "should show migrations_lock" do
    get migrations_lock_url(@migrations_lock)
    assert_response :success
  end

  test "should get edit" do
    get edit_migrations_lock_url(@migrations_lock)
    assert_response :success
  end

  test "should update migrations_lock" do
    patch migrations_lock_url(@migrations_lock), params: { migrations_lock: { is_locked: @migrations_lock.is_locked } }
    assert_redirected_to migrations_lock_url(@migrations_lock)
  end

  test "should destroy migrations_lock" do
    assert_difference('MigrationsLock.count', -1) do
      delete migrations_lock_url(@migrations_lock)
    end

    assert_redirected_to migrations_locks_url
  end
end
