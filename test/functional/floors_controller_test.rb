require 'test_helper'

class FloorsControllerTest < ActionController::TestCase
  setup do
    @floor = floors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floor" do
    assert_difference('Floor.count') do
      post :create, floor: { ceiling_height: @floor.ceiling_height, floor_number: @floor.floor_number, project_id: @floor.project_id, slab_thickness: @floor.slab_thickness }
    end

    assert_redirected_to floor_path(assigns(:floor))
  end

  test "should show floor" do
    get :show, id: @floor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floor
    assert_response :success
  end

  test "should update floor" do
    put :update, id: @floor, floor: { ceiling_height: @floor.ceiling_height, floor_number: @floor.floor_number, project_id: @floor.project_id, slab_thickness: @floor.slab_thickness }
    assert_redirected_to floor_path(assigns(:floor))
  end

  test "should destroy floor" do
    assert_difference('Floor.count', -1) do
      delete :destroy, id: @floor
    end

    assert_redirected_to floors_path
  end
end
