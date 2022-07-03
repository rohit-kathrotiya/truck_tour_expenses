class TruckToursController < ApplicationController
  before_action :set_truck_tour, only: %i[ edit update destroy ]
  before_action :truck_fleet_data

  # GET /truck_tours or /truck_tours.json
  def index
    @truck_tours = TruckTour.all
  end

  # GET /truck_tours/new
  def new
    @truck_tour = TruckTour.new
  end

  # GET /truck_tours/1/edit
  def edit
  end

  # POST /truck_tours or /truck_tours.json
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

  # PATCH/PUT /truck_tours/1 or /truck_tours/1.json
  def update
    respond_to do |format|
      if @truck_tour.update(truck_tour_params)
        format.html { redirect_to truck_tours_url, notice: "Truck tour was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truck_tours/1 or /truck_tours/1.json
  def destroy
    @truck_tour.destroy

    respond_to do |format|
      format.html { redirect_to truck_tours_url, notice: "Truck tour was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck_tour
      @truck_tour = TruckTour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def truck_tour_params
      params.require(:truck_tour).permit(:name, :distance_in_kilometer, :tour_start_date, :tour_end_date, :truck_fleet_id)
    end

    def truck_fleet_data
      @truck_fleets = TruckFleet.all
    end
end
