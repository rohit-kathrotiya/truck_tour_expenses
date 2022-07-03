require "test_helper"

class TruckToursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_tour = truck_tours(:one)
  end

  test "should get index" do
    get truck_tours_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_tour_url
    assert_response :success
  end

  test "should create truck_tour" do
    assert_difference('TruckTour.count') do
      post truck_tours_url, params: { truck_tour: { distance_in_kilometer: @truck_tour.distance_in_kilometer, tour_end_date: @truck_tour.tour_end_date, tour_start_date: @truck_tour.tour_start_date, truck_fleet_id: @truck_tour.truck_fleet_id } }
    end

    assert_redirected_to truck_tour_url(TruckTour.last)
  end

  test "should show truck_tour" do
    get truck_tour_url(@truck_tour)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_tour_url(@truck_tour)
    assert_response :success
  end

  test "should update truck_tour" do
    patch truck_tour_url(@truck_tour), params: { truck_tour: { distance_in_kilometer: @truck_tour.distance_in_kilometer, tour_end_date: @truck_tour.tour_end_date, tour_start_date: @truck_tour.tour_start_date, truck_fleet_id: @truck_tour.truck_fleet_id } }
    assert_redirected_to truck_tour_url(@truck_tour)
  end

  test "should destroy truck_tour" do
    assert_difference('TruckTour.count', -1) do
      delete truck_tour_url(@truck_tour)
    end

    assert_redirected_to truck_tours_url
  end
end
