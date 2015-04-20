require 'test_helper'

class BuildTrucksControllerTest < ActionController::TestCase
  setup do
    @build_truck = build_trucks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:build_trucks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create build_truck" do
    assert_difference('BuildTruck.count') do
      post :create, build_truck: { configuration: @build_truck.configuration, flooring: @build_truck.flooring, lighting: @build_truck.lighting, outside_color: @build_truck.outside_color, owner_id: @build_truck.owner_id, project_name: @build_truck.project_name, rods: @build_truck.rods, shelves: @build_truck.shelves, size: @build_truck.size, walls: @build_truck.walls }
    end

    assert_redirected_to build_truck_path(assigns(:build_truck))
  end

  test "should show build_truck" do
    get :show, id: @build_truck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @build_truck
    assert_response :success
  end

  test "should update build_truck" do
    patch :update, id: @build_truck, build_truck: { configuration: @build_truck.configuration, flooring: @build_truck.flooring, lighting: @build_truck.lighting, outside_color: @build_truck.outside_color, owner_id: @build_truck.owner_id, project_name: @build_truck.project_name, rods: @build_truck.rods, shelves: @build_truck.shelves, size: @build_truck.size, walls: @build_truck.walls }
    assert_redirected_to build_truck_path(assigns(:build_truck))
  end

  test "should destroy build_truck" do
    assert_difference('BuildTruck.count', -1) do
      delete :destroy, id: @build_truck
    end

    assert_redirected_to build_trucks_path
  end
end
