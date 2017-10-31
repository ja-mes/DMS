class AddEngineAndTypeToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :engine, :string
    add_column :vehicles, :type, :string
  end
end
