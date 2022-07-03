require "test_helper"

class TruckFleetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_fleet = truck_fleets(:one)
  end

  test "should get index" do
    get truck_fleets_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_fleet_url
    assert_response :success
  end

  test "should create truck_fleet" do
    assert_difference('TruckFleet.count') do
      post truck_fleets_url, params: { truck_fleet: {  } }
    end

    assert_redirected_to truck_fleet_url(TruckFleet.last)
  end

  test "should show truck_fleet" do
    get truck_fleet_url(@truck_fleet)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_fleet_url(@truck_fleet)
    assert_response :success
  end

  test "should update truck_fleet" do
    patch truck_fleet_url(@truck_fleet), params: { truck_fleet: {  } }
    assert_redirected_to truck_fleet_url(@truck_fleet)
  end

  test "should destroy truck_fleet" do
    assert_difference('TruckFleet.count', -1) do
      delete truck_fleet_url(@truck_fleet)
    end

    assert_redirected_to truck_fleets_url
  end
end
