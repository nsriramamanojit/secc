require 'test_helper'

class RevenueBlocksControllerTest < ActionController::TestCase
  setup do
    @revenue_block = revenue_blocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:revenue_blocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create revenue_block" do
    assert_difference('RevenueBlock.count') do
      post :create, :revenue_block => @revenue_block.attributes
    end

    assert_redirected_to revenue_block_path(assigns(:revenue_block))
  end

  test "should show revenue_block" do
    get :show, :id => @revenue_block.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @revenue_block.to_param
    assert_response :success
  end

  test "should update revenue_block" do
    put :update, :id => @revenue_block.to_param, :revenue_block => @revenue_block.attributes
    assert_redirected_to revenue_block_path(assigns(:revenue_block))
  end

  test "should destroy revenue_block" do
    assert_difference('RevenueBlock.count', -1) do
      delete :destroy, :id => @revenue_block.to_param
    end

    assert_redirected_to revenue_blocks_path
  end
end
