require 'test_helper'

class DevicePermissionsControllerTest < ActionController::TestCase
  setup do
    @device_permission = device_permissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_permissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_permission" do
    assert_difference('DevicePermission.count') do
      post :create, :device_permission => @device_permission.attributes
    end

    assert_redirected_to device_permission_path(assigns(:device_permission))
  end

  test "should show device_permission" do
    get :show, :id => @device_permission.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @device_permission.to_param
    assert_response :success
  end

  test "should update device_permission" do
    put :update, :id => @device_permission.to_param, :device_permission => @device_permission.attributes
    assert_redirected_to device_permission_path(assigns(:device_permission))
  end

  test "should destroy device_permission" do
    assert_difference('DevicePermission.count', -1) do
      delete :destroy, :id => @device_permission.to_param
    end

    assert_redirected_to device_permissions_path
  end
end
