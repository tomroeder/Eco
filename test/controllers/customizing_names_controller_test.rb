require 'test_helper'

class CustomizingNamesControllerTest < ActionController::TestCase
  setup do
    @customizing_name = customizing_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customizing_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customizing_name" do
    assert_difference('CustomizingName.count') do
      post :create, customizing_name: {  }
    end

    assert_redirected_to customizing_name_path(assigns(:customizing_name))
  end

  test "should show customizing_name" do
    get :show, id: @customizing_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customizing_name
    assert_response :success
  end

  test "should update customizing_name" do
    patch :update, id: @customizing_name, customizing_name: {  }
    assert_redirected_to customizing_name_path(assigns(:customizing_name))
  end

  test "should destroy customizing_name" do
    assert_difference('CustomizingName.count', -1) do
      delete :destroy, id: @customizing_name
    end

    assert_redirected_to customizing_names_path
  end
end
