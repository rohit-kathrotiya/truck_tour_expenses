class TruckTour < ApplicationRecord
  belongs_to :truck_fleet

  # page should exist to enter a truck tour which is identified by a unique name
  validates_uniqueness_of :name

  #validates some columns
  validates :distance_in_kilometer, :tour_start_date, :tour_end_date, presence: true

end
