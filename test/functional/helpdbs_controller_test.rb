require 'test_helper'

class HelpdbsControllerTest < ActionController::TestCase
  setup do
    @helpdb = helpdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:helpdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create helpdb" do
    assert_difference('Helpdb.count') do
      post :create, :helpdb => @helpdb.attributes
    end

    assert_redirected_to helpdb_path(assigns(:helpdb))
  end

  test "should show helpdb" do
    get :show, :id => @helpdb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @helpdb.to_param
    assert_response :success
  end

  test "should update helpdb" do
    put :update, :id => @helpdb.to_param, :helpdb => @helpdb.attributes
    assert_redirected_to helpdb_path(assigns(:helpdb))
  end

  test "should destroy helpdb" do
    assert_difference('Helpdb.count', -1) do
      delete :destroy, :id => @helpdb.to_param
    end

    assert_redirected_to helpdbs_path
  end
end
