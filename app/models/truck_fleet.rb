class TruckFleet < ApplicationRecord
    has_many :truck_tours

    # add some validations
    validates :fuel_price_per_liter, :plate_number, presence: true
end
