class CreateTruckFleets < ActiveRecord::Migration[6.1]
  def change
    create_table :truck_fleets do |t|
      t.string :plate_number
      t.integer :fuel_price_per_liter

      t.timestamps
    end
  end
end
