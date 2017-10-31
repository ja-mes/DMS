class AddMilageAndColorToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :mileage, :string
    add_column :vehicles, :color, :integer
  end
end
