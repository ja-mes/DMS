class AddPricingToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :downPmt, :double
    add_column :vehicles, :price, :double
    add_column :vehicles, :weeklyPmt, :double
  end
end
