require 'test_helper'

class FreigabeStatusesControllerTest < ActionController::TestCase
  setup do
    @freigabe_status = freigabe_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:freigabe_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create freigabe_status" do
    assert_difference('FreigabeStatus.count') do
      post :create, freigabe_status: {  }
    end

    assert_redirected_to freigabe_status_path(assigns(:freigabe_status))
  end

  test "should show freigabe_status" do
    get :show, id: @freigabe_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @freigabe_status
    assert_response :success
  end

  test "should update freigabe_status" do
    patch :update, id: @freigabe_status, freigabe_status: {  }
    assert_redirected_to freigabe_status_path(assigns(:freigabe_status))
  end

  test "should destroy freigabe_status" do
    assert_difference('FreigabeStatus.count', -1) do
      delete :destroy, id: @freigabe_status
    end

    assert_redirected_to freigabe_statuses_path
  end
end
