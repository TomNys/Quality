require 'test_helper'

class SplittingsControllerTest < ActionController::TestCase
  setup do
    @splitting = splittings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:splittings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create splitting" do
    assert_difference('Splitting.count') do
      post :create, splitting: {  }
    end

    assert_redirected_to splitting_path(assigns(:splitting))
  end

  test "should show splitting" do
    get :show, id: @splitting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @splitting
    assert_response :success
  end

  test "should update splitting" do
    patch :update, id: @splitting, splitting: {  }
    assert_redirected_to splitting_path(assigns(:splitting))
  end

  test "should destroy splitting" do
    assert_difference('Splitting.count', -1) do
      delete :destroy, id: @splitting
    end

    assert_redirected_to splittings_path
  end
end
