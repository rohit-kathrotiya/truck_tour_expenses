class TruckTour < ApplicationRecord
  belongs_to :truck_fleet

  # page should exist to enter a truck tour which is identified by a unique name
  validates_uniqueness_of :name

  #validates some columns
  validates :distance_in_kilometer, :start_date, :end_date, presence: true

end
