require 'test_helper'

class CsrfattacksControllerTest < ActionController::TestCase
  setup do
    @csrfattack = csrfattacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:csrfattacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create csrfattack" do
    assert_difference('Csrfattack.count') do
      post :create, csrfattack: { integer: @csrfattack.integer, string: @csrfattack.string }
    end

    assert_redirected_to csrfattack_path(assigns(:csrfattack))
  end

  test "should show csrfattack" do
    get :show, id: @csrfattack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @csrfattack
    assert_response :success
  end

  test "should update csrfattack" do
    patch :update, id: @csrfattack, csrfattack: { integer: @csrfattack.integer, string: @csrfattack.string }
    assert_redirected_to csrfattack_path(assigns(:csrfattack))
  end

  test "should destroy csrfattack" do
    assert_difference('Csrfattack.count', -1) do
      delete :destroy, id: @csrfattack
    end

    assert_redirected_to csrfattacks_path
  end
end
