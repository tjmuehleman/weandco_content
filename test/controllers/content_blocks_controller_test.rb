require 'test_helper'

class ContentBlocksControllerTest < ActionController::TestCase
  setup do
    @content_block = content_blocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_blocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_block" do
    assert_difference('ContentBlock.count') do
      post :create, content_block: { content: @content_block.content, headline: @content_block.headline }
    end

    assert_redirected_to content_block_path(assigns(:content_block))
  end

  test "should show content_block" do
    get :show, id: @content_block
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_block
    assert_response :success
  end

  test "should update content_block" do
    patch :update, id: @content_block, content_block: { content: @content_block.content, headline: @content_block.headline }
    assert_redirected_to content_block_path(assigns(:content_block))
  end

  test "should destroy content_block" do
    assert_difference('ContentBlock.count', -1) do
      delete :destroy, id: @content_block
    end

    assert_redirected_to content_blocks_path
  end
end
