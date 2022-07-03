module TruckToursHelper
    # find a cost of tour
    def cost_of_tour(fuel_price, distance_in_kilometer)
        fuel_price * distance_in_kilometer
    end
end
