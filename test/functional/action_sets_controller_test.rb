require 'test_helper'

class ActionSetsControllerTest < ActionController::TestCase
  setup do
    @action_set = action_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_set" do
    assert_difference('ActionSet.count') do
      post :create, :action_set => @action_set.attributes
    end

    assert_redirected_to action_set_path(assigns(:action_set))
  end

  test "should show action_set" do
    get :show, :id => @action_set.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @action_set.to_param
    assert_response :success
  end

  test "should update action_set" do
    put :update, :id => @action_set.to_param, :action_set => @action_set.attributes
    assert_redirected_to action_set_path(assigns(:action_set))
  end

  test "should destroy action_set" do
    assert_difference('ActionSet.count', -1) do
      delete :destroy, :id => @action_set.to_param
    end

    assert_redirected_to action_sets_path
  end
end
