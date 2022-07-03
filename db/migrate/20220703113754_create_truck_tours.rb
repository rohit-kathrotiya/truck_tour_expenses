class CreateTruckTours < ActiveRecord::Migration[6.1]
  def change
    create_table :truck_tours do |t|
      t.integer :distance_in_kilometer
      t.date :tour_start_date
      t.date :tour_end_date
      t.references :truck_fleet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
