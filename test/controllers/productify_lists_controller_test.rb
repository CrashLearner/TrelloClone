require 'test_helper'

class ProductifyListsControllerTest < ActionController::TestCase
  setup do
    @productify_list = productify_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productify_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productify_list" do
    assert_difference('ProductifyList.count') do
      post :create, productify_list: { description: @productify_list.description, title: @productify_list.title }
    end

    assert_redirected_to productify_list_path(assigns(:productify_list))
  end

  test "should show productify_list" do
    get :show, id: @productify_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productify_list
    assert_response :success
  end

  test "should update productify_list" do
    patch :update, id: @productify_list, productify_list: { description: @productify_list.description, title: @productify_list.title }
    assert_redirected_to productify_list_path(assigns(:productify_list))
  end

  test "should destroy productify_list" do
    assert_difference('ProductifyList.count', -1) do
      delete :destroy, id: @productify_list
    end

    assert_redirected_to productify_lists_path
  end
end
