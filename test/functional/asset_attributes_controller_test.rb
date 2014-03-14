require 'test_helper'

class AssetAttributesControllerTest < ActionController::TestCase
  setup do
    @asset_attribute = asset_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asset_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asset_attribute" do
    assert_difference('AssetAttribute.count') do
      post :create, asset_attribute: {  }
    end

    assert_redirected_to asset_attribute_path(assigns(:asset_attribute))
  end

  test "should show asset_attribute" do
    get :show, id: @asset_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asset_attribute
    assert_response :success
  end

  test "should update asset_attribute" do
    put :update, id: @asset_attribute, asset_attribute: {  }
    assert_redirected_to asset_attribute_path(assigns(:asset_attribute))
  end

  test "should destroy asset_attribute" do
    assert_difference('AssetAttribute.count', -1) do
      delete :destroy, id: @asset_attribute
    end

    assert_redirected_to asset_attributes_path
  end
end
