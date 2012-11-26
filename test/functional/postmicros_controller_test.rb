require 'test_helper'

class PostmicrosControllerTest < ActionController::TestCase
  setup do
    @postmicro = postmicros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postmicros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postmicro" do
    assert_difference('Postmicro.count') do
      post :create, :postmicro => { :content => @postmicro.content, :user_id => @postmicro.user_id }
    end

    assert_redirected_to postmicro_path(assigns(:postmicro))
  end

  test "should show postmicro" do
    get :show, :id => @postmicro
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @postmicro
    assert_response :success
  end

  test "should update postmicro" do
    put :update, :id => @postmicro, :postmicro => { :content => @postmicro.content, :user_id => @postmicro.user_id }
    assert_redirected_to postmicro_path(assigns(:postmicro))
  end

  test "should destroy postmicro" do
    assert_difference('Postmicro.count', -1) do
      delete :destroy, :id => @postmicro
    end

    assert_redirected_to postmicros_path
  end
end
