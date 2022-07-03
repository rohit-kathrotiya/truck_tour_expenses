require "application_system_test_case"

class TruckFleetsTest < ApplicationSystemTestCase
  setup do
    @truck_fleet = truck_fleets(:one)
  end

  test "visiting the index" do
    visit truck_fleets_url
    assert_selector "h1", text: "Truck Fleets"
  end

  test "creating a Truck fleet" do
    visit truck_fleets_url
    click_on "New Truck Fleet"

    click_on "Create Truck fleet"

    assert_text "Truck fleet was successfully created"
    click_on "Back"
  end

  test "updating a Truck fleet" do
    visit truck_fleets_url
    click_on "Edit", match: :first

    click_on "Update Truck fleet"

    assert_text "Truck fleet was successfully updated"
    click_on "Back"
  end

  test "destroying a Truck fleet" do
    visit truck_fleets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Truck fleet was successfully destroyed"
  end
end
