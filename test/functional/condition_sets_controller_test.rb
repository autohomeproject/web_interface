require 'test_helper'

class ConditionSetsControllerTest < ActionController::TestCase
  setup do
    @condition_set = condition_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:condition_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condition_set" do
    assert_difference('ConditionSet.count') do
      post :create, :condition_set => @condition_set.attributes
    end

    assert_redirected_to condition_set_path(assigns(:condition_set))
  end

  test "should show condition_set" do
    get :show, :id => @condition_set.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @condition_set.to_param
    assert_response :success
  end

  test "should update condition_set" do
    put :update, :id => @condition_set.to_param, :condition_set => @condition_set.attributes
    assert_redirected_to condition_set_path(assigns(:condition_set))
  end

  test "should destroy condition_set" do
    assert_difference('ConditionSet.count', -1) do
      delete :destroy, :id => @condition_set.to_param
    end

    assert_redirected_to condition_sets_path
  end
end
