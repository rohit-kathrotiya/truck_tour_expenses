class TruckToursController < ApplicationController
  before_action :set_truck_tour, only: %i[ edit update destroy ]
  before_action :truck_fleet_data

  def index
    @truck_tours = TruckTour.all
  end

  def new
    @truck_tour = TruckTour.new
  end

  def edit
  end

  def create
    @truck_tour = TruckTour.new(truck_tour_params)

    respond_to do |format|
      if @truck_tour.save
        format.html { redirect_to truck_tours_url, notice: "Truck tour was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @truck_tour.update(truck_tour_params)
        format.html { redirect_to truck_tours_url, notice: "Truck tour was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @truck_tour.destroy

    respond_to do |format|
      format.html { redirect_to truck_tours_url, notice: "Truck tour was successfully destroyed." }
    end
  end

  private
    def set_truck_tour
      @truck_tour = TruckTour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def truck_tour_params
      params.require(:truck_tour).permit(:name, :distance_in_kilometer, :start_date, :end_date, :truck_fleet_id)
    end

    def truck_fleet_data
      @truck_fleets = TruckFleet.all
    end
end
