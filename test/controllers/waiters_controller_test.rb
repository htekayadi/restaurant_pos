require 'test_helper'

class WaitersControllerTest < ActionController::TestCase
  setup do
    @waiter = waiters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:waiters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create waiter" do
    assert_difference('Waiter.count') do
      post :create, waiter: { address: @waiter.address, name: @waiter.name, phone: @waiter.phone }
    end

    assert_redirected_to waiter_path(assigns(:waiter))
  end

  test "should show waiter" do
    get :show, id: @waiter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @waiter
    assert_response :success
  end

  test "should update waiter" do
    patch :update, id: @waiter, waiter: { address: @waiter.address, name: @waiter.name, phone: @waiter.phone }
    assert_redirected_to waiter_path(assigns(:waiter))
  end

  test "should destroy waiter" do
    assert_difference('Waiter.count', -1) do
      delete :destroy, id: @waiter
    end

    assert_redirected_to waiters_path
  end
end
