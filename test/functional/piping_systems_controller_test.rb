require 'test_helper'

class PipingSystemsControllerTest < ActionController::TestCase
  setup do
    @piping_system = piping_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piping_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piping_system" do
    assert_difference('PipingSystem.count') do
      post :create, piping_system: { fitting: @piping_system.fitting, name: @piping_system.name, pipe_schedule: @piping_system.pipe_schedule, project_id: @piping_system.project_id, typical_tee_height: @piping_system.typical_tee_height, unit_connection_size: @piping_system.unit_connection_size }
    end

    assert_redirected_to piping_system_path(assigns(:piping_system))
  end

  test "should show piping_system" do
    get :show, id: @piping_system
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piping_system
    assert_response :success
  end

  test "should update piping_system" do
    put :update, id: @piping_system, piping_system: { fitting: @piping_system.fitting, name: @piping_system.name, pipe_schedule: @piping_system.pipe_schedule, project_id: @piping_system.project_id, typical_tee_height: @piping_system.typical_tee_height, unit_connection_size: @piping_system.unit_connection_size }
    assert_redirected_to piping_system_path(assigns(:piping_system))
  end

  test "should destroy piping_system" do
    assert_difference('PipingSystem.count', -1) do
      delete :destroy, id: @piping_system
    end

    assert_redirected_to piping_systems_path
  end
end
