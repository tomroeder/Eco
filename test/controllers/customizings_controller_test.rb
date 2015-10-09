require 'test_helper'

class CustomizingsControllerTest < ActionController::TestCase
  setup do
    @customizing = customizings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customizings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customizing" do
    assert_difference('Customizing.count') do
      post :create, customizing: {  }
    end

    assert_redirected_to customizing_path(assigns(:customizing))
  end

  test "should show customizing" do
    get :show, id: @customizing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customizing
    assert_response :success
  end

  test "should update customizing" do
    patch :update, id: @customizing, customizing: {  }
    assert_redirected_to customizing_path(assigns(:customizing))
  end

  test "should destroy customizing" do
    assert_difference('Customizing.count', -1) do
      delete :destroy, id: @customizing
    end

    assert_redirected_to customizings_path
  end
end
