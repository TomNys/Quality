require 'test_helper'

class HmacsControllerTest < ActionController::TestCase
  setup do
    @hmac = hmacs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hmacs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hmac" do
    assert_difference('Hmac.count') do
      post :create, hmac: { hmac: @hmac.hmac, key: @hmac.key, secret: @hmac.secret }
    end

    assert_redirected_to hmac_path(assigns(:hmac))
  end

  test "should show hmac" do
    get :show, id: @hmac
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hmac
    assert_response :success
  end

  test "should update hmac" do
    patch :update, id: @hmac, hmac: { hmac: @hmac.hmac, key: @hmac.key, secret: @hmac.secret }
    assert_redirected_to hmac_path(assigns(:hmac))
  end

  test "should destroy hmac" do
    assert_difference('Hmac.count', -1) do
      delete :destroy, id: @hmac
    end

    assert_redirected_to hmacs_path
  end
end
