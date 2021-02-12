require 'test_helper'

class InventoriesControllerTest < ActionController::TestCase
  setup do
    @dealership = dealerships(:one)
    @inventory = inventories(:one)
  end

  test "should get index" do
    get :index, params: { dealership_id: @dealership }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { dealership_id: @dealership }
    assert_response :success
  end

  test "should create inventory" do
    assert_difference('Inventory.count') do
      post :create, params: { dealership_id: @dealership, inventory: @inventory.attributes }
    end

    assert_redirected_to dealership_inventory_path(@dealership, Inventory.last)
  end

  test "should show inventory" do
    get :show, params: { dealership_id: @dealership, id: @inventory }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { dealership_id: @dealership, id: @inventory }
    assert_response :success
  end

  test "should update inventory" do
    put :update, params: { dealership_id: @dealership, id: @inventory, inventory: @inventory.attributes }
    assert_redirected_to dealership_inventory_path(@dealership, Inventory.last)
  end

  test "should destroy inventory" do
    assert_difference('Inventory.count', -1) do
      delete :destroy, params: { dealership_id: @dealership, id: @inventory }
    end

    assert_redirected_to dealership_inventories_path(@dealership)
  end
end
