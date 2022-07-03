require "application_system_test_case"

class TruckToursTest < ApplicationSystemTestCase
  setup do
    @truck_tour = truck_tours(:one)
  end

  test "visiting the index" do
    visit truck_tours_url
    assert_selector "h1", text: "Truck Tours"
  end

  test "creating a Truck tour" do
    visit truck_tours_url
    click_on "New Truck Tour"

    fill_in "Distance in kilometer", with: @truck_tour.distance_in_kilometer
    fill_in "Tour end date", with: @truck_tour.tour_end_date
    fill_in "Tour start date", with: @truck_tour.tour_start_date
    fill_in "Truck fleet", with: @truck_tour.truck_fleet_id
    click_on "Create Truck tour"

    assert_text "Truck tour was successfully created"
    click_on "Back"
  end

  test "updating a Truck tour" do
    visit truck_tours_url
    click_on "Edit", match: :first

    fill_in "Distance in kilometer", with: @truck_tour.distance_in_kilometer
    fill_in "Tour end date", with: @truck_tour.tour_end_date
    fill_in "Tour start date", with: @truck_tour.tour_start_date
    fill_in "Truck fleet", with: @truck_tour.truck_fleet_id
    click_on "Update Truck tour"

    assert_text "Truck tour was successfully updated"
    click_on "Back"
  end

  test "destroying a Truck tour" do
    visit truck_tours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Truck tour was successfully destroyed"
  end
end
