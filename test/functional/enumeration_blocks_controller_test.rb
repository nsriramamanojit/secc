require 'test_helper'

class EnumerationBlocksControllerTest < ActionController::TestCase
  setup do
    @enumeration_block = enumeration_blocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enumeration_blocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enumeration_block" do
    assert_difference('EnumerationBlock.count') do
      post :create, :enumeration_block => @enumeration_block.attributes
    end

    assert_redirected_to enumeration_block_path(assigns(:enumeration_block))
  end

  test "should show enumeration_block" do
    get :show, :id => @enumeration_block.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @enumeration_block.to_param
    assert_response :success
  end

  test "should update enumeration_block" do
    put :update, :id => @enumeration_block.to_param, :enumeration_block => @enumeration_block.attributes
    assert_redirected_to enumeration_block_path(assigns(:enumeration_block))
  end

  test "should destroy enumeration_block" do
    assert_difference('EnumerationBlock.count', -1) do
      delete :destroy, :id => @enumeration_block.to_param
    end

    assert_redirected_to enumeration_blocks_path
  end
end
