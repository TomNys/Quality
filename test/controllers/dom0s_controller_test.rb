require 'test_helper'

class Dom0sControllerTest < ActionController::TestCase
  setup do
    @dom0 = dom0s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dom0s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dom0" do
    assert_difference('Dom0.count') do
      post :create, dom0: {  }
    end

    assert_redirected_to dom0_path(assigns(:dom0))
  end

  test "should show dom0" do
    get :show, id: @dom0
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dom0
    assert_response :success
  end

  test "should update dom0" do
    patch :update, id: @dom0, dom0: {  }
    assert_redirected_to dom0_path(assigns(:dom0))
  end

  test "should destroy dom0" do
    assert_difference('Dom0.count', -1) do
      delete :destroy, id: @dom0
    end

    assert_redirected_to dom0s_path
  end
end
