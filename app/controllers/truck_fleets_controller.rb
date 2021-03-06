class TruckFleetsController < ApplicationController
  before_action :set_truck_fleet, only: %i[ edit update destroy ]

  def index
    @truck_fleets = TruckFleet.all
  end

  def new
    @truck_fleet = TruckFleet.new
  end

  def edit
  end

  def create
    @truck_fleet = TruckFleet.new(truck_fleet_params)

    respond_to do |format|
      if @truck_fleet.save
        format.html { redirect_to truck_fleets_url, notice: "Truck fleet was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @truck_fleet.update(truck_fleet_params)
        format.html { redirect_to truck_fleets_url, notice: "Truck fleet was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @truck_fleet.destroy

    respond_to do |format|
      format.html { redirect_to truck_fleets_url, notice: "Truck fleet was successfully destroyed." }
    end
  end

  private
    def set_truck_fleet
      @truck_fleet = TruckFleet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def truck_fleet_params
      params.require(:truck_fleet).permit(:plate_number, :fuel_price_per_liter)
    end
end
