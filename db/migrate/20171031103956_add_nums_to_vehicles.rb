class AddNumsToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :stock, :string
    add_column :vehicles, :vin, :string
  end
end
